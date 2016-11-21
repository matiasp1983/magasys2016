using System;

namespace COMMON.Entities
{
    public class Proveedor
    {
        private DateTime _fechaAlta;
        private string _razonSocial;
        private string _nombre;
        private string _apellido;
        private string _email;
        private string _calle;
        private string _piso;
        private string _departamento;
        private string _codigoPostal;

        public int PIdProveedor { get; set; }

        public string PFechaAlta
        {
            get { return _fechaAlta.ToShortDateString(); }
            set { _fechaAlta = Convert.ToDateTime(value); }
        }

        public string PCuit { get; set; }

        public string PRazonSocial
        {
            get { return _razonSocial; }
            set { _razonSocial = Utilities.RemoveSpace(Utilities.UpperCase(value)); }
        }

        public string PNombre
        {
            get { return _nombre; }
            set { _nombre = Utilities.RemoveSpace(Utilities.CapitalizeFirstLetter(value)); }
        }

        public string PApellido
        {
            get { return _apellido; }
            set { _apellido = Utilities.RemoveSpace(Utilities.CapitalizeFirstLetter(value)); }
        }

        public string PTelefonoMovil { get; set; }

        public string PTelefonoFijo { get; set; }

        public string PEmail
        {
            get { return _email; }
            set { _email = Utilities.RemoveSpace(value); }
        }

        public string PCalle
        {
            get { return _calle; }
            set { _calle = Utilities.RemoveSpace(value); }
        }

        public short PNumero { get; set; }

        public string PPiso
        {
            get { return _piso; }
            set { _piso = Utilities.RemoveSpace(value); }
        }

        public string PDepartamento
        {
            get { return _departamento; }
            set { _departamento = Utilities.RemoveSpace(Utilities.UpperCase(value)); }
        }

        public int PIdProvincia { get; set; }

        public int PIdLocalidad { get; set; }

        public string PBarrio { get; set; }

        public string PCodigoPostal
        {
            get { return _codigoPostal; }
            set { _codigoPostal = Utilities.RemoveSpace(Utilities.UpperCase(value)); }
        }
    }
}
