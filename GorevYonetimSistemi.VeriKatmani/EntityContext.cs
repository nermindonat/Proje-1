using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GorevYonetimSistemi.EntitySiniflar;

namespace GorevYonetimSistemi.VeriKatmani
{
    public class EntityContext:DbContext
    {
        public DbSet<AnaBilimDal> AnaBilimDallar { get; set; }
        public DbSet<Atama> Atamalar { get; set; }
        public DbSet<Bildirim> Bildirimler { get; set; }
        public DbSet<Bolum> Bolumler { get; set; }
        public DbSet<Gorev> Gorevler { get; set; }
        public DbSet<IdariGorevUnvan> IdariGorevUnvanlar { get; set; }
        public DbSet<Kullanici> Kullanicilar { get; set; }
        public DbSet<Okul> Okullar { get; set; }
        public DbSet<ToplantiDetay> ToplantiDetaylar { get; set; }
        public DbSet<Toplanti> Toplantilar { get; set; }
        public DbSet<Unvan> Unvanlar { get; set; }
    }
}
