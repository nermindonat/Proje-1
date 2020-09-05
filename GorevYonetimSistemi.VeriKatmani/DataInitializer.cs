using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GorevYonetimSistemi.EntitySiniflar;

namespace GorevYonetimSistemi.VeriKatmani
{
    public class DataInitializer:CreateDatabaseIfNotExists<EntityContext>
    {
        protected override void Seed(EntityContext context)
        {
            List<Kullanici> kullanicilar = new List<Kullanici>()
            {
                new Kullanici(){Ad="Hüseyin" , Soyad = "Gürüler", Email = "hg@gmail.com"
                    , FkAbdId = 1,FkBolumId=1, FkIdariGorevUnvanId = 1, FkOkulId = 1,FkUnvanId=1,
                    Sifre="h1"
                },
                new Kullanici(){Ad="İlhan" , Soyad = "Tarımer", Email = "ilt@gmail.com"
                    , FkAbdId = 1,FkBolumId=1, FkIdariGorevUnvanId = 1, FkOkulId = 1,FkUnvanId=1,
                    Sifre="i1"
                }
            };

            foreach (var kullanici in kullanicilar)
            {
                context.Kullanicilar.Add(kullanici);
            }

            context.SaveChanges();

            List<AnaBilimDal> anaBilimDallar=new List<AnaBilimDal>()
            {
                new AnaBilimDal(){AbdAd = "Bilgisayar Bilimi"},
                new AnaBilimDal(){AbdAd = "Yazılım Bilimi"},

            };

            foreach (var anaBilimDal in anaBilimDallar)
            {
                context.AnaBilimDallar.Add(anaBilimDal);
            }

            context.SaveChanges();

            List<Atama> atamalar=new List<Atama>()
            {
                new Atama(){FkKisiId = 1, FkAtayanKisiId = 1, FkGorevId = 1},
                new Atama(){FkKisiId = 1, FkAtayanKisiId = 1, FkGorevId = 2},
                new Atama(){FkKisiId = 2, FkAtayanKisiId = 1, FkGorevId = 1}
            };

            foreach (var atama in atamalar)
            {
                context.Atamalar.Add(atama);
            }

            context.SaveChanges();

            List<KullaniciTur> kullaniciTurler = new List<KullaniciTur>()
            {
                new KullaniciTur(){KullaniciTurAd = "Admin"},
                new KullaniciTur(){KullaniciTurAd = "Personel"},
                new KullaniciTur(){KullaniciTurAd = "Öğrenci"},
            };

            foreach (var kullaniciTur in kullaniciTurler)
            {
                context.KullaniciTurleri.Add(kullaniciTur);
            }

            context.SaveChanges();

            List<KullaniciTurAtama> kullaniciTurAtamalar = new List<KullaniciTurAtama>()
            {
                new KullaniciTurAtama(){FkKisiId = 1,FkKullaniciTurId = 1},
                new KullaniciTurAtama(){FkKisiId = 1,FkKullaniciTurId = 2},
                new KullaniciTurAtama(){FkKisiId = 2,FkKullaniciTurId = 2},
            };
            foreach (var kullaniciTurAtama in kullaniciTurAtamalar)
            {
                context.KullaniciTurAtamalar.Add(kullaniciTurAtama);
            }

            context.SaveChanges();

            List<Bolum> bolumler = new List<Bolum>()
            {
                new Bolum(){BolumAdi = "Bilişim Sistemleri Mühendisliği"},
                new Bolum(){BolumAdi = "Enerji Sistemleri Mühendisliği"},
                new Bolum(){BolumAdi = "Bilgisayar Mühendisliği"},
            };


            foreach (var bolum in bolumler)
            {
                context.Bolumler.Add(bolum);
            }

            context.SaveChanges();


            List<IdariGorevUnvan> idariGorevUnvanlar = new List<IdariGorevUnvan>()
            {
                new IdariGorevUnvan(){IdariGorevUnvanAd = "Bölüm başkanı"},
                new IdariGorevUnvan(){IdariGorevUnvanAd = "Bölüm başkan yardımcısı"},
                new IdariGorevUnvan(){IdariGorevUnvanAd = "Dekan"},


            };

            foreach (var idariGorevUnvan in idariGorevUnvanlar)
            {
                context.IdariGorevUnvanlar.Add(idariGorevUnvan);
            }

            context.SaveChanges();

            List<Okul> okullar = new List<Okul>()
            {
                new Okul(){OkulAdi = "Teknoloji Fakültesi"},
                new Okul(){OkulAdi = "Fen Fakültesi"},
                
            };

            foreach (var okul in okullar)
            {
                context.Okullar.Add(okul);
            }

            context.SaveChanges();

            List<Unvan> unvanlar = new List<Unvan>()
            {
                new Unvan(){UnvanAd = "Dr"},
                new Unvan(){UnvanAd = "Doçent"},
                new Unvan(){UnvanAd = "Prof"},

            };
            context.SaveChanges();

            base.Seed(context);
        }
    }
}
