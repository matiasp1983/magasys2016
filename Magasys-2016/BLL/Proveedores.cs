using System.Collections.Generic;
using COMMON.Entities;
using COMMON.Filters;

namespace BLL
{
    public class Proveedores
    {
        public List<Proveedor> GetAll()
        {
            var oProveedores = new DAL.Proveedores();
            return oProveedores.GetAll();
        }

        public List<Proveedor> GetByFilter(FiltroProveedor oFiltroProveedor)
        {
            var oProveedores = new DAL.Proveedores();
            return oProveedores.GetByFilter(oFiltroProveedor);
        }

        public Proveedor GetById(int idProveedor)
        {
            var oProveedores = new DAL.Proveedores();
            return oProveedores.GetById(idProveedor);
        }

        public Proveedor GetByCuit(string cuit)
        {
            var oProveedores = new DAL.Proveedores();
            return oProveedores.GetByCuit(cuit);
        }

        public bool Insert(Proveedor oProveedor)
        {
            var oProveedores = new DAL.Proveedores();
            return oProveedores.Insert(oProveedor);
        }

        public bool Update(Proveedor oProveedor)
        {
            var oProveedores = new DAL.Proveedores();
            return oProveedores.Update(oProveedor);
        }

        public bool Delete(int idProveedor)
        {
            var oProveedores = new DAL.Proveedores();
            return oProveedores.Delete(idProveedor);
        }
    }
}
