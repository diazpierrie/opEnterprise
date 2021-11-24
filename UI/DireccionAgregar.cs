using EE;

namespace UI
{
    public partial class DireccionAgregar : UpdatableForm
    {
        private readonly CompradorEe _comprador;

        public DireccionAgregar(CompradorEe comprador)
        {
            _comprador = comprador;
            InitializeComponent();
        }




    }
}
