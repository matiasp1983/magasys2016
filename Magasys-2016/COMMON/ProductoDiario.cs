using System;


namespace COMMON
{
    public class ProductoDiario
    {
        private Int32 _codigoProducto;
        private DateTime _fechaAlta;
        private Int32 _idTipoProducto;
        private String _nombre;
        private String _descripcion;
        private Int32 _idProveedor;
        private Int32 _precioLunes;
        private Int32 _precioMartes;
        private Int32 _precioMiercoles;
        private Int32 _precioJueves;
        private Int32 _precioViernes;
        private Int32 _precioSabado;
        private Int32 _precioDomingo;
       
       
      

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
        public Int32 pPrecioLunes
        {
            get { return _precioLunes; }
            set { _precioLunes = value; }
        }
        public Int32 pPrecioMartes
        {
            get { return _precioMartes; }
            set { _precioMartes = value; }
        }
        public Int32 pPrecioMiercoles
        {
            get { return _precioMiercoles; }
            set { _precioMiercoles = value; }
        }
        public Int32 pPrecioJueves
        {
            get { return _precioJueves; }
            set { _precioJueves = value; }
        }
        public Int32 pPrecioViernes
        {
            get { return _precioViernes; }
            set { _precioViernes = value; }
        }
        public Int32 pPrecioSabado
        {
            get { return _precioSabado; }
            set { _precioSabado = value; }
        }
        public Int32 pPrecioDomingo
        {
            get { return _precioDomingo; }
            set { _precioDomingo = value; }
        }
        
    }
}
