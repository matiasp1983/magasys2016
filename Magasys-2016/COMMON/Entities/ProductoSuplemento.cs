using System;


namespace COMMON.Entities
{
    public class ProductoSuplemento
    {
        public int PCodigoProducto { get; set; }

        public DateTime PFechaAlta { get; set; }

        public int PIdTipoProducto { get; set; }

        public string PNombre { get; set; }

        public string PDescripcion { get; set; }

        public int PIdProveedor { get; set; }

        public double PPrecio { get; set; }

        public int PCantidadEdicion { get; set; }

        public int PIdDiaSemana { get; set; }

        public int PIdProductoDiario { get; set; }
    }
}
