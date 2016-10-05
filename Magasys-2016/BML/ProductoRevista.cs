using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BML
{
    class ProductoRevista
    {
        private Int32 _codigoProducto;
        private DateTime _fechaAlta;
        private Int32 _idTipoProducto;
        private String _nombre;
        private Int32 _idProveedor;
        private Int32 _precio;
        private Int32 _idPeriodicidad;
        private Int32 _idDiaSemana;
        private Int32 _idGenero;



        public Int32 pCodigoProducto
        {
            get { return _codigoProducto; }
            set { _codigoProducto = value; }
        }

        public DateTime pFechaAlta
        {
            get { return _fechaAlta; }
            set { _fechaAlta = value; }
        }
        public Int32 pIdTipoProducto
        {
            get { return _idTipoProducto; }
            set { _idTipoProducto = value; }
        }
        public String pNombre
        {
            get { return _nombre; }
            set { _nombre = value; }
        }
        public Int32 pIdProveedor
        {
            get { return _idProveedor; }
            set { _idProveedor = value; }
        }
        public Int32 pPrecio
        {
            get { return _precio; }
            set { _precio = value; }
        }
        public Int32 pIdPeriodicidad
        {
            get { return _idPeriodicidad; }
            set { _idPeriodicidad = value; }
        }
        public Int32 pIdDiaSemana
        {
            get { return _idDiaSemana; }
            set { _idDiaSemana = value; }
        }
        public Int32 pIdGenero
        {
            get { return _idGenero; }
            set { _idGenero = value; }
        }

    }
}
