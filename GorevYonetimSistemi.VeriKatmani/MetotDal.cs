using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.VeriKatmani
{
    public class MetotDal : IMetotDal
    {
        public int KullaniciTurListe(int kisiId, int kullaniciTurId)
        {
            using (EntityContext context = new EntityContext())
            {
                IQueryable<object> kullaniciTurListe = (from i in context.KullaniciTurleri
                                         join c in context.KullaniciTurAtamalar
                                             on i.KullaniciTurId
                                             equals c.FkKullaniciTurId
                                         where c.FkKisiId == kisiId && c.FkKullaniciTurId == kullaniciTurId
                                                        select new
                                                        {
                                                             
                                                        });

                return kullaniciTurListe.Count();

            }
        }
    }
}
