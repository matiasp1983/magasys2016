namespace COMMON.Entities
{
    public class DetalleVenta
    {
        public int PIdDetalleVenta { get; set; }

        public int PIdVenta { get; set; }

        public int PIdProducto { get; set; }

        public int PIdEdicion { get; set; }

        public int PPrecioUnitario { get; set; }

        public short PCantidad { get; set; }

        public short PSubTotal { get; set; }
    }
}
