using System.Collections.Generic;
using COMMON.Entities;

namespace BLL
{
    public class Proveedores
    {
        public List<Proveedor> GetAll()
        {
            var oProveedores = new DAL.Proveedores();
            return oProveedores.GetAll();
        }

        public Proveedor GetOneById(int idProveedor)
        {
            var oProveedores = new DAL.Proveedores();
            return oProveedores.GetOneById(idProveedor);
        }
    }
}
