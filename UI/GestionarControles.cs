using System;
using System.Collections.Generic;
using System.Windows.Forms;
using EE;
using Security;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class GestionarControles : UpdatableForm
    {
        private readonly GestionarIdioma _gestionarIdioma;
        private readonly IdiomaEe _idioma;
        private readonly List<ControlEe> _controlesModificados = new List<ControlEe>();

        public GestionarControles(GestionarIdioma gestionarIdioma)
        {// Crear
            InitializeComponent();

            _gestionarIdioma = gestionarIdioma;
            _idioma = new IdiomaEe { Id = IdiomaManager.Crear(), Nombre = "Lenguaje sin nombre" };
            gridIdioma.DataSource = IdiomaManager.ObtenerControles(_idioma.Id);
            gestionarIdioma.CargarComboBox();

            gridIdioma.Columns["id"].Visible = false;
            gridIdioma.Columns["idIdioma"].Visible = false;

            gridIdioma.Columns["Tag"].ReadOnly = false;

            txtNombre.Text = _idioma.Nombre;
            btnAplicar.Text = "Crear";
        }

        public GestionarControles(GestionarIdioma gestionarIdioma, IdiomaEe idioma)
        {// Actualizar
            InitializeComponent();

            _gestionarIdioma = gestionarIdioma;
            _idioma = idioma;
            gridIdioma.DataSource = IdiomaManager.ObtenerControles(idioma.Id);
            gestionarIdioma.CargarComboBox();

            gridIdioma.Columns["id"].Visible = false;
            gridIdioma.Columns["idIdioma"].Visible = false;

            gridIdioma.Columns["Tag"].ReadOnly = false;

            txtNombre.Text = _idioma.Nombre;
            btnAplicar.Text = "Actualizar";
        }

        private void gridIdioma_CellValueChanged(object sender, DataGridViewCellEventArgs e)
        {
            var row = gridIdioma.Rows[e.RowIndex];

            _controlesModificados.Add(new ControlEe
            {
                Id = int.Parse(row.Cells["Id"].Value.ToString()),
                IdIdioma = int.Parse(row.Cells["IdIdioma"].Value.ToString()),
                Tag = row.Cells["Tag"].Value.ToString(),
                Texto = row.Cells["Texto"].Value.ToString(),
            });
        }

        private void btnAplicar_Click(object sender, EventArgs e)
        {
            IdiomaManager.ActualizarIdioma(_idioma, txtNombre.Text);
            if (_controlesModificados.Count != 0)
            {
                IdiomaManager.ActualizarControles(_controlesModificados);
            }

            _gestionarIdioma.CargarComboBox();
            Close();
        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
