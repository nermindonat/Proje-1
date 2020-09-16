using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GorevYonetimSistemi.EntitySiniflar;
using GorevYonetimSistemi.VeriKatmani;

namespace GorevYonetimSistemi.Proje.Admin
{
    public partial class AnaBilimDallar : System.Web.UI.Page
    {
        IslemlerDal<AnaBilimDal> _anaBilimDal = new IslemlerDal<AnaBilimDal>();
<<<<<<< HEAD
        SessionKontrol _sessionKontrol = new SessionKontrol();
=======
>>>>>>> b10536827fdb3bb46838600201ba1783a922abcb
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                AnaBilimDalListele();
<<<<<<< HEAD
                int kullaniciTurId = Convert.ToInt32(Session["KullaniciTurId"]);
                string url = HttpContext.Current.Request.Url.AbsolutePath;
                var kontrolUrl = _sessionKontrol.SessionKontrolu(kullaniciTurId, url);
                if (kontrolUrl != url)
                {
                    Response.Redirect(kontrolUrl);
                }
=======
>>>>>>> b10536827fdb3bb46838600201ba1783a922abcb
            }
        }

        private void AnaBilimDalListele()
        {
            var anaBilimDalListe = _anaBilimDal.Listele<AnaBilimDal>();
            lvAbd.DataSource = anaBilimDalListe;
            lvAbd.DataBind();
        }


        protected void btnAbdKaydet_OnServerClick(object sender, EventArgs e)
        {
            _anaBilimDal.Ekle(new AnaBilimDal()
            {
                AbdAd = anaBilimDalAd.Value
            });

            AnaBilimDalListele();
            lblSonuc.Visible = true;
            lblSonuc.InnerText = "Ana Bilim Dal Eklendi!";


        }
        protected void btnAbdSil_OnServerClick(object sender, EventArgs e)
        {
            _anaBilimDal.Sil(int.Parse(anaBilimDalId.Value));

            AnaBilimDalListele();
            lblSonuc.Visible = true;
            lblSonuc.InnerText = "Ana Bilim Dal Silindi!";
        }
        protected void btnAbdGuncelle_OnServerClick(object sender, EventArgs e)
        {
            _anaBilimDal.Guncelle(new AnaBilimDal()
            {
                AbdId = int.Parse(anaBilimDalId.Value),
                AbdAd = anaBilimDalAd.Value
            }); AnaBilimDalListele();
            lblSonuc.Visible = true;
            lblSonuc.InnerText = "Ana Bilim Dal Güncellendi!";
        }
    }
}