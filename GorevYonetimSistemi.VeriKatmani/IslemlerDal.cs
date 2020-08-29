using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.VeriKatmani
{
    public class IslemlerDal<T>:IIslemlerDal<T> where T:class
    {
        private EntityContext _context;
        private DbSet<T> table;

        public IslemlerDal()
        {
            _context=new EntityContext();
            table = _context.Set<T>();
        }

        public IslemlerDal(EntityContext context)
        {
            _context = context;
            table = context.Set<T>();
        }

        public List<T> Listele<T>() where T : class
        {
            var list = _context.Set<T>().ToList();
            return list;
        }

        public void Ekle(T obj)
        {
            table.Add(obj);
            _context.SaveChanges();
        }

        public void Guncelle(T obj)
        {
            table.AddOrUpdate(obj);
            _context.SaveChanges();
        }

        public void Sil(T obj)
        {
            table.Attach(obj);
            table.Remove(obj);
            _context.SaveChanges();

        }
    }
}
