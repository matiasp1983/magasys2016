using System;

namespace COMMON
{
    public class Barrio
    {
        private Int32 _idBarrio;
        private String _nombre;
        private String _descripcion;

        public Int32 pIdBarrio
        {
            get { return _idBarrio; }
            set { _idBarrio = value; }
        }

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
