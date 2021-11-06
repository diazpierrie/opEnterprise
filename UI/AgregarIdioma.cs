using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Forms;
using EE;
using Security;
// ReSharper disable PossibleNullReferenceException

namespace UI
{
    public partial class AgregarIdioma : UpdatableForm
    {
        private readonly GestionarIdioma _gestionarIdioma;
        private List<ControlEe> _controlesModificados = new List<ControlEe>();
        public AgregarIdioma(GestionarIdioma gestionarIdioma)
        {
            InitializeComponent();

            _gestionarIdioma = gestionarIdioma;
            gridIdioma.DataSource = IdiomaManager.ObtenerControles(IdiomaManager.Crear());
            gestionarIdioma.CargarComboBox();

            gridIdioma.Columns["id"].Visible = false;
            gridIdioma.Columns["idIdioma"].Visible = false;

            gridIdioma.Columns["Tag"].ReadOnly = false;
        }

        private void gridIdioma_CellValueChanged(object sender, DataGridViewCellEventArgs e)
        {
            var row = gridIdioma.Rows[e.RowIndex];
            _controlesModificados.Add(new ControlEe()
            {
                Id = int.Parse(row.Cells["Id"].ToString()),
                IdIdioma = int.Parse(row.Cells["IdIdioma"].ToString()),
                Tag = row.Cells["Tag"].ToString(),
                Texto = row.Cells["Texto"].ToString(),
            });
        }

        private void btnCrear_Click(object sender, EventArgs e)
        {
            IdiomaManager.ActualizarControles(_controlesModificados);
        }
    }
}
