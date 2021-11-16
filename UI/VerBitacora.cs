using System;
using System.Linq;
using EE;
using MetroFramework.Controls;
using Security;

namespace UI
{
    public partial class VerBitacora : UpdatableForm
    {

        public VerBitacora()
        {
            InitializeComponent();
            Sesion.ObtenerSesion().Idioma.Forms.Add(this);

            var dict = Enum.GetValues(typeof(Tipo))
                .Cast<Tipo>()
                .ToDictionary(t => (int)t, t => t.ToString());
            dict.Add(4, "Todos");
            cbTipo.DataSource = dict.ToList();
            cbTipo.DisplayMember = "Value";
            cbTipo.SelectedIndex = 4;
        }

        private void BitacoreTable_Load(object sender, EventArgs e)
        {
            AllControls = Program.GetAllControls(this);
            AllControls.Add(lblTipo);

            IdiomaManager.Cambiar(Sesion.ObtenerSesion().Idioma, Sesion.ObtenerSesion().Idioma.Id, this);

            UpdateGrid();

            messageDetail.DocumentText = "";
        }

        public override void ActualizarTextos()
        {
            base.ActualizarTextos();
            UpdateGrid();
        }

        private void UpdateGrid()
        {
            gridBitacora.Columns.Clear();

            gridBitacora.Columns.Add("Fecha", Sesion.ObtenerSesion().Idioma.Textos["date"]);
            gridBitacora.Columns.Add("Titulo", Sesion.ObtenerSesion().Idioma.Textos["title"]);
            gridBitacora.Columns.Add("Descripcion", Sesion.ObtenerSesion().Idioma.Textos["description"]);
            gridBitacora.Columns.Add("Tipo", Sesion.ObtenerSesion().Idioma.Textos["type"]);
            gridBitacora.Columns.Add("Nombre de usuario", Sesion.ObtenerSesion().Idioma.Textos["username"]);

            var filter = cbTipo.Text == "Todos" ? null : cbTipo.Text;

            var mensajes = BitacoraManager.Obtener(dateFrom.Value, dateTo.Value, filter);

            if (mensajes == null)
            {
                return;
            }

            foreach (var msg in mensajes)
            {
                var userName = msg.Usuario.Id != 0 ? UsuarioManager.Obtener(msg.Usuario.Id).NombreCompleto : "";

                gridBitacora.Rows.Add(msg.Fecha, msg.Titulo, msg.Descripcion, msg.Tipo, userName);
            }
        }

        private void BtnFiltrar_Click(object sender, EventArgs e)
        {
            UpdateGrid();
        }

        private void gridBitacora_SelectionChanged(object sender, EventArgs e)
        {
            if (messageDetail.Document != null && ((MetroGrid)sender).SelectedRows.Count > 0)
            {
                var code = BitacoraManager.FormatJson(((MetroGrid)sender).SelectedRows[0].Cells[2].Value.ToString());
                // ReSharper disable once PossibleNullReferenceException
                messageDetail.Document.Body.InnerHtml = "<pre><code>" + code + "</code></pre>";
            }
        }
    }
}
