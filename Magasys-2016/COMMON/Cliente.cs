using System;

namespace COMMON
{
    public class Cliente
    {
        private Int32 _numeroCliente;
        private DateTime _fechaAlta;
        private Int32 _idTipoDni;
        private Int32 _dni;
        private String _nombre;
        private String _apellido;
        private String _alias;
        private Int32 _idSexo;
        private String _telefonoMovil;
        private String _telefonoFijo;
        private String _email;
        private DateTime _fechaNacimiento;
        private String _calle;
        private Int16 _numero;
        private Int16 _piso;
        private String _departamento;
        private Int32 _codigoPostal;
        private Int32 _idProvincia;
        private Int32 _idLocalidad;
        private Int32 _idBarrio;


        public int pNumeroCliente
        {
            get { return _numeroCliente; }
            set { _numeroCliente = value; }
        }

        public DateTime pFechaAlta
        {
            get { return _fechaAlta; }
            set { _fechaAlta = value; }
        }

        public int pIdTipoDni
        {
            get { return _idTipoDni; }
            set { _idTipoDni = value; }
        }

        public int pDni
        {
            get { return _dni; }
            set { _dni = value; }
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

        public string pAlias
        {
            get { return _alias; }
            set { _alias = value; }
        }

        public int pIdSexo
        {
            get { return _idSexo; }
            set { _idSexo = value; }
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

        public DateTime pFechaNacimiento
        {
            get { return _fechaNacimiento; }
            set { _fechaNacimiento = value; }
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

        public int pCodigoPostal
        {
            get { return _codigoPostal; }
            set { _codigoPostal = value; }
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
    }
}
