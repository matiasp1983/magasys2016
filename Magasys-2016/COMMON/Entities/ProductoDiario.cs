using System;


namespace COMMON.Entities
{
    public class ProductoDiario
    {
        public int PCodigoProducto { get; set; }

        public DateTime PFechaAlta { get; set; }

        public int PIdTipoProducto { get; set; }

        public string PNombre { get; set; }

        public string PDescripcion { get; set; }

        public int PIdProveedor { get; set; }

        public double PPrecioLunes { get; set; }

        public double PPrecioMartes { get; set; }

        public double PPrecioMiercoles { get; set; }

        public double PPrecioJueves { get; set; }

        public double PPrecioViernes { get; set; }

        public double PPrecioSabado { get; set; }

        public double PPrecioDomingo { get; set; }
    }
}
