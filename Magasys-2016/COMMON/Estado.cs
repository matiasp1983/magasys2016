using System;


namespace COMMON
{
    public class Estado
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
