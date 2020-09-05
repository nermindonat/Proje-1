using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.VeriKatmani
{
    public class MetotDal : IMetotDal
    {
        public List<object> KullaniciTurListe(int kisiId, int kullaniciTurId)
        {
            
            using (EntityContext context = new EntityContext())
            {
                IQueryable<object> kullaniciTurListe = (from i in context.KullaniciTurleri
                                         join c in context.KullaniciTurAtamalar
                                             on i.KullaniciTurId
                                             equals c.FkKullaniciTurId
                                         join k in context.Kullanicilar on c.FkKisiId equals k.KisiId 
                                         where c.FkKisiId == kisiId && c.FkKullaniciTurId == kullaniciTurId
                                                        select new
                                                        {
                                                             KisiAdSoyad = k.Ad + " "+ k.Soyad,
                                                             KullaniciTuru = i.KullaniciTurAd
                                                        });
                List<object> liste = new List<object>(kullaniciTurListe);
                return liste;

            }
        }
    }
}
