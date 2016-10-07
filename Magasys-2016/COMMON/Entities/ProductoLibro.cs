using System;


namespace COMMON.Entities
{
    public class ProductoLibro
    {
        public int PCodigoProducto { get; set; }

        public DateTime PFechaAlta { get; set; }

        public int PIdTipoProducto { get; set; }

        public string PNombre { get; set; }

        public string PDescripcion { get; set; }

        public int PIdProveedor { get; set; }

        public double PPrecio { get; set; }

        public int PIdAnio { get; set; }

        public string PAutor { get; set; }

        public int PIdGenero { get; set; }
    }
}
