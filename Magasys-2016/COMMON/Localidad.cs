using System;

namespace COMMON
{
    public class Localidad
    {
        private Int32 _idLocalidad;
        private String _nombre;
        private String _descripcion;

        public Int32 pIdLocalidad
        {
            get { return _idLocalidad; }
            set { _idLocalidad = value; }
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
