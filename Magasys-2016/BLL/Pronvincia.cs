using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using COMMON.Entities;

namespace BLL
{
    public class Pronvincia
    {
        public List<Provincia> GetAll()
        {
            var oProvincias = new DAL.Provincias();
            return oProvincias.GetAll();
        }
    }
}
