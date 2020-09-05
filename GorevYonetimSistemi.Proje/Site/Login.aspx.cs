using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GorevYonetimSistemi.EntitySiniflar;
using GorevYonetimSistemi.VeriKatmani;

namespace GorevYonetimSistemi.Proje.Site
{
    public partial class Login : System.Web.UI.Page
    {
        IslemlerDal<Kullanici> _kullaniciDal = new IslemlerDal<Kullanici>();
        IslemlerDal<KullaniciTur> _kullaniciTurDal = new IslemlerDal<KullaniciTur>();

        MetotDal _metotDal = new MetotDal();
        protected void Page_Load(object sender, EventArgs e)
        {
            KullaniciTurListele();
        }

        private void KullaniciTurListele()
        {
            var kullaniciTurListe = _kullaniciTurDal.Listele<KullaniciTur>();
            selectKullaniciTuru.DataSource = kullaniciTurListe;
            selectKullaniciTuru.DataTextField = "KullaniciTurAd";
            selectKullaniciTuru.DataValueField = "KullaniciTurId";
            selectKullaniciTuru.DataBind();
        }

        protected void btnGiris_OnServerClick(object sender, EventArgs e)
        {

            var kullaniciDeger = Request.Form["selectKullaniciTuru"];
            var kullaniciTur = selectKullaniciTuru.Items[int.Parse(kullaniciDeger)-1];
            string kullaniciAdi = tbxKullaniciAdi.Value;
            string sifre = tbxSifre.Value;
            var liste = _kullaniciDal.Listele<Kullanici>();
            foreach (var kullanici in liste)
            {
                if ((kullanici.Email == kullaniciAdi) && (kullanici.Sifre == sifre))
                {
                    if (_metotDal.KullaniciTurListe(kullanici.KisiId, int.Parse(kullaniciDeger)) > 0)
                    {
                        kullaniciTur.Text = turkceKarakterDonüstür(kullaniciTur.Text);
                        string url =  kullaniciTur + "Gorev.aspx";
                        Label1.Text = url;
                        Response.Redirect("/" + kullaniciTur + "/" + url);

                    }
                    else
                    {
                        Label1.Text = "Dur yolcu. Bilmeden gelip bastığın bu seçenek yanlıştır.Erken zamanda yolunu bulman dileğiyle.";
                    }
                }

                else
                {
                    Label1.Text = "Hatalı Giriş!";
                }
            }

        }
        public static string turkceKarakterDonüstür(string metin)
        {
            if (string.IsNullOrEmpty(metin))
                metin = string.Empty;
            metin = HttpContext.Current.Server.HtmlDecode(metin);
            metin = metin.Trim();
            metin = metin.Replace("ş", "s");
            metin = metin.Replace("Ş", "S");
            metin = metin.Replace("İ", "I");
            metin = metin.Replace("I", "I");
            metin = metin.Replace("ı", "i");
            metin = metin.Replace("ö", "o");
            metin = metin.Replace("Ö", "O");
            metin = metin.Replace("ü", "u");
            metin = metin.Replace("Ü", "U");
            metin = metin.Replace("Ç", "c");
            metin = metin.Replace("ç", "C");
            metin = metin.Replace("ğ", "g");
            metin = metin.Replace("Ğ", "G");
            metin = metin.Trim();
            return metin;
        }

    }
}