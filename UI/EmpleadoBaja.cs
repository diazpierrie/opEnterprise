using System;
using BLL;
using EE;

namespace UI
{
    public partial class EmpleadoBaja : UpdatableForm
    {
        public UsuarioEe Usuario;
        private readonly EmpleadoHome _homeForm;

        public EmpleadoBaja(EmpleadoHome homeForm, UsuarioEe usuario)
        {
            InitializeComponent();
            Usuario = usuario;
            lblPregunta.Text = $@"¿Está seguro que desea eliminar el Usuario {Usuario.Nombre}?";
            _homeForm = homeForm;
        }

        private void btnSi_Click(object sender, EventArgs e)
        {
            UsuarioBll.Eliminar(Usuario);
            _homeForm.ActualizarGrid();
            this.Close();
        }

        private void btnNo_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
