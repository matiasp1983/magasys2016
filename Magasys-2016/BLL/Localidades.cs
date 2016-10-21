using System.Collections.Generic;
using COMMON.Entities;

namespace BLL
{
    public class Localidades
    {
        public List<Localidad> GetLocalidadByProvincia(int idProvincia)
        {
            var oLocalidades = new DAL.Localidades();
            return oLocalidades.GetLocalidadByProvincia(idProvincia);
        }
    }
}
