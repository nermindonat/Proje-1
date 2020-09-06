using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GorevYonetimSistemi.EntitySiniflar;

namespace GorevYonetimSistemi.VeriKatmani
{
    public class MetotDal : IMetotDal
    {
        public List<KullaniciTurModel> KullaniciTurListe(int kisiId, int kullaniciTurId)
        {
            
            using (EntityContext context = new EntityContext())
            {
                var kullaniciTurListe = (from i in context.KullaniciTurleri
                                         join c in context.KullaniciTurAtamalar
                                             on i.KullaniciTurId
                                             equals c.FkKullaniciTurId
                                         join k in context.Kullanicilar on c.FkKisiId equals k.KisiId 
                                         where c.FkKisiId == kisiId && c.FkKullaniciTurId == kullaniciTurId
                                                        select new KullaniciTurModel()
                                                        {
                                                             AdSoyad = k.Ad + " "+ k.Soyad,
                                                             KullaniciTur = i.KullaniciTurAd,
                                                             Fotograf = k.Fotograf
                                                        });
           
                return kullaniciTurListe.ToList();

            }
        }
    }
}
