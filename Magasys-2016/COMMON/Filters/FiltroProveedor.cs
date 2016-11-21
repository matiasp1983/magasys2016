using System;
using COMMON.Entities;

namespace COMMON.Filters
{
    public class FiltroProveedor : Proveedor
    {

        private DateTime _fechaAltaDesde;
        private DateTime _fechaAltaHasta;

        public string PFechaAltaDesde
        {
            get { return _fechaAltaDesde.ToShortDateString(); }
            set { _fechaAltaDesde = Convert.ToDateTime(value); }
        }

        public string PFechaAltaHasta
        {
            get { return _fechaAltaHasta.ToShortDateString(); }
            set { _fechaAltaHasta = Convert.ToDateTime(value); }
        }
    }
}
