using System;


namespace COMMON.Entities
{
    public class Venta
    {
        public int PNumeroVenta { get; set; }

        public DateTime PFechaAlta { get; set; }

        public int PIdFormaPago { get; set; }

        public int PMontoTotal { get; set; }

        public int PIdEstado { get; set; }

        public short PNumeroCliente { get; set; }
    }
}
