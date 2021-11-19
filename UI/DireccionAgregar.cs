using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
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
