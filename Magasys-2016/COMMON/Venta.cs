using System;


namespace COMMON
{
    public class Venta
    {
        private Int32 _numeroVenta;
        private DateTime _fechaAlta;
        private Int32 _idFormaPago;
        private Int32 _idEstado;
        private Int32 _montoTotal;
        private Int16 _numeroCliente;

        public int pNumeroVenta
        {
            get { return _numeroVenta; }
            set { _numeroVenta = value; }
        }

        public DateTime pFechaAlta
        {
            get { return _fechaAlta; }
            set { _fechaAlta = value; }
        }

        public int pIdFormaPago
        {
            get { return _idFormaPago; }
            set { _idFormaPago = value; }
        }

        public int pMontoTotal
        {
            get { return _montoTotal; }
            set { _montoTotal = value; }
        }

        public Int16 pNumeroCliente
        {
            get { return _numeroCliente; }
            set { _numeroCliente = value; }
        }
        
    }
}
