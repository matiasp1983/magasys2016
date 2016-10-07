using System;

namespace COMMON.Entities
{
    public class Cliente
    {
        public int PNumeroCliente { get; set; }

        public DateTime PFechaAlta { get; set; }

        public int PIdTipoDni { get; set; }

        public int PDni { get; set; }

        public string PNombre { get; set; }

        public string PApellido { get; set; }

        public string PAlias { get; set; }

        public int PIdSexo { get; set; }

        public string PTelefonoMovil { get; set; }

        public string PTelefonoFijo { get; set; }

        public string PEmail { get; set; }

        public DateTime PFechaNacimiento { get; set; }

        public string PCalle { get; set; }

        public short PNumero { get; set; }

        public short PPiso { get; set; }

        public string PDepartamento { get; set; }

        public int PCodigoPostal { get; set; }

        public int PIdProvincia { get; set; }

        public int PIdLocalidad { get; set; }

        public int PIdBarrio { get; set; }
    }
}
