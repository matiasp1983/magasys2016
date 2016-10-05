using System;


namespace COMMON
{
    public class DetalleVenta
    {
        private Int32 _idDetalleVenta;
        private Int32 _idVenta;
        private Int32 _idProducto;
        private Int32 _idEdicion;
        private Int32 _precioUnitario;
        private Int16 _cantidad;
        private Int16 _subTotal;

        public int pIdDetalleVenta
        {
            get { return _idDetalleVenta; }
            set { _idDetalleVenta = value; }
        }
        public int pIdVenta
        {
            get { return _idVenta; }
            set { _idVenta = value; }
        }
        public int pIdProducto
        {
            get { return _idProducto; }
            set { _idProducto = value; }
        }
        public int pIdEdicion
        {
            get { return _idEdicion; }
            set { _idEdicion = value; }
        }
        public int pPrecioUnitario
        {
            get { return _precioUnitario; }
            set { _precioUnitario = value; }
        }

        public Int16 pCantidad
        {
            get { return _cantidad; }
            set { _cantidad = value; }
        }
        public Int16 pSubTotal
        {
            get { return _subTotal; }
            set { _subTotal = value; }
        }
    }
}
