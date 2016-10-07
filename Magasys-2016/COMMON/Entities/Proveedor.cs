using System;

namespace COMMON.Entities
{
    public class Proveedor
    {
        private string _nombre;
        private string _apellido;

        public int PIdProveedor { get; set; }

        public DateTime PFechaAlta { get; set; }

        public int PCuit { get; set; }

        public string PRazonSocial { get; set; }

        public string PNombre
        {
            get { return _nombre; }
            set { _nombre = Utilities.CapitalizeFirstLetter(value); }
        }

        public string PApellido
        {
            get { return _apellido; }
            set { _apellido = Utilities.CapitalizeFirstLetter(value); }
        }

        public string PTelefonoMovil { get; set; }

        public string PTelefonoFijo { get; set; }

        public string PEmail { get; set; }

        public string PCalle { get; set; }

        public short PNumero { get; set; }

        public short PPiso { get; set; }

        public string PDepartamento { get; set; }

        public int PIdProvincia { get; set; }

        public int PIdLocalidad { get; set; }

        public int PIdBarrio { get; set; }

        public string PCodigoPostal { get; set; }
    }
}
