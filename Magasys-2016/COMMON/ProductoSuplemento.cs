using System;


namespace COMMON
{
    public class ProductoSuplemento
    {
        private Int32 _codigoProducto;
        private DateTime _fechaAlta;
        private Int32 _idTipoProducto;
        private String _nombre;
        private String _descripcion;
        private Int32 _idProveedor;
        private Int32 _precio;
        private Int32 _cantidadEdicion;
        private Int32 _idDiaSemana;
        private Int32 _idProductoDiario;

        

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
        public Int32 pCantidadEdicion
        {
            get { return _cantidadEdicion; }
            set { _cantidadEdicion = value; }
        }
        public Int32 pIdDiaSemana
        {
            get { return _idDiaSemana; }
            set { _idDiaSemana = value; }
        }
        
        public Int32 pIdProductoDiario
        {
            get { return _idProductoDiario; }
            set { _idProductoDiario = value; }
        }
    }
}
