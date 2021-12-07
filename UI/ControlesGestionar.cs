using System;
using System.Collections.Generic;
using System.Windows.Forms;
using EE;
using Security;

// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class ControlesGestionar : UpdatableForm
    {
        private readonly IdiomaGestionar _idiomaGestionar;
        private readonly IdiomaEe _idioma;
        private readonly List<ControlEe> _controlesModificados = new List<ControlEe>();

        public ControlesGestionar(IdiomaGestionar idiomaGestionar)
        {// Crear
            InitializeComponent();

            _idiomaGestionar = idiomaGestionar;
            _idioma = new IdiomaEe { Id = IdiomaManager.Crear(), Nombre = "Lenguaje sin nombre" };
            gridIdioma.DataSource = IdiomaManager.ObtenerControles(_idioma.Id);
            idiomaGestionar.CargarComboBox();

            gridIdioma.Columns["id"].Visible = false;
            gridIdioma.Columns["idIdioma"].Visible = false;

            gridIdioma.Columns["Tag"].ReadOnly = false;

            txtNombre.Text = _idioma.Nombre;
            btnAplicar.Text = "Crear";
        }

        public ControlesGestionar(IdiomaGestionar idiomaGestionar, IdiomaEe idioma)
        {// Actualizar
            InitializeComponent();

            _idiomaGestionar = idiomaGestionar;
            _idioma = idioma;
            gridIdioma.DataSource = IdiomaManager.ObtenerControles(idioma.Id);
            idiomaGestionar.CargarComboBox();

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

            _idiomaGestionar.CargarComboBox();
            Close();
        }

        private void btnCerrar_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
