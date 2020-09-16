using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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
                                             AdSoyad = k.Ad + " " + k.Soyad,
                                             KullaniciTur = i.KullaniciTurAd,
                                             Fotograf = k.Fotograf
                                         });

                return kullaniciTurListe.ToList();

            }
        }

        public List<GorevAtama> GorevAtama()
        {
            using (EntityContext context = new EntityContext())
            {
                var kullaniciGorevListesi = (from i in context.Atamalar join c in context.Kullanicilar on i.FkKisiId equals c.KisiId
                    join a in context.Kullanicilar on i.FkAtayanKisiId equals a.KisiId  
                                             select new GorevAtama()
                                             {
                                                 AtananKisi =a.Ad,
                                                 AtayanKisi = c.Ad
                                             });

                return kullaniciGorevListesi.ToList();
            }
        }

        public List<object> ToplantiDetay()
        {
            using (EntityContext context = new EntityContext())
            {
                
                IQueryable<object> toplantiDetayListesi = (from i in context.ToplantiDetaylar
                    join p in context.Toplantilar on i.FkToplantiId equals p.ToplantiId
                    select new
                    {
                        ToplantiDetayId = i.ToplantiDetayId,
                        ToplantiId = p.ToplantiId,
                        ToplantiAdi = p.ToplantiAdi,
                        ToplantiDurum = i.ToplantiDurum,
                        AlinanKararlar = i.AlinanKararlar
                    });
                List<object> liste = new List<object>(toplantiDetayListesi);
                return liste;
            }
        }

        public List<object> ToplantiAtama()
        {
            using (EntityContext context = new EntityContext())
            {
                IQueryable<object> toplantiAtama = (from i in context.ToplantiAtama
                    join k in context.Kullanicilar on i.FkAtayanKisiId equals k.KisiId
                    join p in context.Kullanicilar on i.FkIlgiliKisiId equals p.KisiId
                    join t in context.Toplantilar on i.FkToplantiId equals t.ToplantiId
                    select new
                    {
                        ToplantiAdi = t.ToplantiAdi,
                        IlgiliKisiler = p.Ad + " " + p.Soyad,
                        AtayanKisi = k.Ad + " " + k.Soyad
                    });

                List<object> liste = new List<object>(toplantiAtama);
                return liste;
            }

        }

        public List<BildirimAtamaModel> KisiBildirimListe(int kisiId)
        {
            using (EntityContext context = new EntityContext())
            {
                SqlParameter parameter = new SqlParameter("@KisiId",kisiId);
                var kisiBildirimListesi = context.Database
                    .SqlQuery<BildirimAtamaModel>("BildirimListe @KisiId", parameter)
                    .OrderByDescending(p => p.GorevSonTarihSaat).Take(3).ToList();
                return kisiBildirimListesi;
            }
        }

        public List<BildirimAtamaModel> BildirimDetay(int kisiId, int bildirimId)
        {
            using (EntityContext context = new EntityContext())
            {
                SqlParameter parameter = new SqlParameter("@KisiId", kisiId);
                var bildirimDetay = context.Database
                    .SqlQuery<BildirimAtamaModel>("BildirimListe @KisiId", parameter).Where(p=>p.BildirimId==bildirimId).ToList();
                return bildirimDetay;
            }
        }


    }
}
