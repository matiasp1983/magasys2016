using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BML
{
    class TipoProducto
    {
        
        private String _nombre;
        private String _descripcion;
        


      
        public string pNombre
        {
            get { return _nombre; }
            set { _nombre = value; }
        }

        public string pDescripcion
        {
            get { return _descripcion; }
            set { _descripcion = value; }
        }

       
    }
}
