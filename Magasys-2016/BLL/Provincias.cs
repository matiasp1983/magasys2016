using System.Collections.Generic;
using COMMON.Entities;

namespace BLL
{
    public class Provincias
    {
        public Provincia GetById(int idProvincia)
        {
            var oProvincias = new DAL.Provincias();
            return oProvincias.GetById(idProvincia);
        }
        
        public List<Provincia> GetAll()
        {
            var oProvincias = new DAL.Provincias();
            return oProvincias.GetAll();
        }
    }
}
