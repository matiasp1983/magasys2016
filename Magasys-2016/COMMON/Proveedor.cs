using System;

namespace COMMON
{
    public class Proveedor
    {
        private Int32 _numeroProveedor;
        private DateTime _fechaAlta;
        private Int32 _cuit;
        private String _razonSocial;
        private String _nombre;
        private String _apellido;
        private String _telefonoMovil;
        private String _telefonoFijo;
        private String _email;
        private String _calle;
        private Int16 _numero;
        private Int16 _piso;
        private String _departamento;
        private Int32 _idProvincia;
        private Int32 _idLocalidad;
        private Int32 _idBarrio;
        private Int32 _codigoPostal;

        public int pNumeroProveedor
        {
            get { return _numeroProveedor; }
            set { _numeroProveedor = value; }
        }

        public DateTime pFechaAlta
        {
            get { return _fechaAlta; }
            set { _fechaAlta = value; }
        }

        public int pCuit
        {
            get { return _cuit; }
            set { _cuit = value; }
        }

        public string pRazonSocial
        {
            get { return _razonSocial; }
            set { _razonSocial = value; }
        }

        public string pNombre
        {
            get { return _nombre; }
            set { _nombre = value; }
        }

        public string pApellido
        {
            get { return _apellido; }
            set { _apellido = value; }
        }

        public string pTelefonoMovil
        {
            get { return _telefonoMovil; }
            set { _telefonoMovil = value; }
        }

        public string pTelefonoFijo
        {
            get { return _telefonoFijo; }
            set { _telefonoFijo = value; }
        }

        public string pEmail
        {
            get { return _email; }
            set { _email = value; }
        }

        public string pCalle
        {
            get { return _calle; }
            set { _calle = value; }
        }

        public short pNumero
        {
            get { return _numero; }
            set { _numero = value; }
        }

        public short pPiso
        {
            get { return _piso; }
            set { _piso = value; }
        }

        public string pDepartamento
        {
            get { return _departamento; }
            set { _departamento = value; }
        }

        public int pIdProvincia
        {
            get { return _idProvincia; }
            set { _idProvincia = value; }
        }

        public int pIdLocalidad
        {
            get { return _idLocalidad; }
            set { _idLocalidad = value; }
        }

        public int pIdBarrio
        {
            get { return _idBarrio; }
            set { _idBarrio = value; }
        }

        public int pCodigoPostal
        {
            get { return _codigoPostal; }
            set { _codigoPostal = value; }
        }
    }
}
