using System;


namespace COMMON
{
    public class ProductoLibro
    {
        private Int32 _codigoProducto;
        private DateTime _fechaAlta;
        private Int32 _idTipoProducto;
        private String _nombre;
        private String _descripcion;
        private Int32 _idProveedor;
        private Int32 _precio;
        private Int32 _idAnio;
        private String _Autor;
        private Int32 _idGenero;

        public Int32 pCodigoProducto
        {
            get { return _codigoProducto; }
            set { _codigoProducto = value; }
        }

        public DateTime pFechaAlta
        {
            get { return _fechaAlta; }
            set { _fechaAlta = value; }
        }
        public Int32 pIdTipoProducto
        {
            get { return _idTipoProducto; }
            set { _idTipoProducto = value; }
        }
        public String pNombre
        {
            get { return _nombre; }
            set { _nombre = value; }
        }
        public String pDescripcion
        {
            get { return _descripcion; }
            set { _descripcion = value; }
        }
        public Int32 pIdProveedor
        {
            get { return _idProveedor; }
            set { _idProveedor = value; }
        }
        public Int32 pPrecio
        {
            get { return _precio; }
            set { _precio = value; }
        }
        
        public Int32 pIdAnio
        {
            get { return _idAnio; }
            set { _idAnio = value; }
        }

        public String pAutor
        {
            get { return _Autor; }
            set { _Autor = value; }
        }
        public Int32 pIdGenero
        {
            get { return _idGenero; }
            set { _idGenero = value; }
        }
    }
}
