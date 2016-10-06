using System;

namespace COMMON
{
    public class Provincia
    {
        private Int32 _idProvincia;
        private String _nombre;
        private String _descripcion;

        public Int32 pIdProvincia
        {
            get { return _idProvincia; }
            set { _idProvincia = value; }
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
