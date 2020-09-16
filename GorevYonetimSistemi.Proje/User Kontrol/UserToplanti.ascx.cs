using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GorevYonetimSistemi.EntitySiniflar;
using GorevYonetimSistemi.VeriKatmani;

namespace GorevYonetimSistemi.Proje.User_Kontrol
{
    public partial class UserToplanti : System.Web.UI.UserControl
    {
        IslemlerDal<Toplanti> _toplantiDal = new IslemlerDal<Toplanti>();
        IslemlerDal<Kullanici> _kullaniciDal = new IslemlerDal<Kullanici>();
        MetotDal _metotDal = new MetotDal();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ToplantiListe();
                ToplantiDetayListe();
                ToplantiAtamaListe();
                KisileriListele();
            }
        }

        private void KisileriListele()
        {
            //var kisiListe = _kullaniciDal.Listele<Kullanici>();
            //selectIlgiliKisiler.DataSource = kisiListe;
            //selectIlgiliKisiler.DataTextField = "Ad";
            //selectIlgiliKisiler.DataValueField = "KisiId";
            //selectIlgiliKisiler.DataBind();
        }

        private void ToplantiAtamaListe()
        {
            var toplantiAtamaListe = _metotDal.ToplantiAtama();
            lvToplantiAtama.DataSource = toplantiAtamaListe;
            lvToplantiAtama.DataBind();
        }

        private void ToplantiDetayListe()
        {
            var toplantiDetayListele = _metotDal.ToplantiDetay();
            lvToplantiDetay.DataSource = toplantiDetayListele;
            lvToplantiDetay.DataBind();
        }

        private void ToplantiListe()
        {
            var toplantiListele = _toplantiDal.Listele<Toplanti>();
            lvToplanti.DataSource = toplantiListele;
            lvToplanti.DataBind();

            selectToplantiDetayTA.DataSource = toplantiListele;
            selectToplantiDetayTA.DataValueField = "ToplantiAdi";
            selectToplantiDetayTA.DataTextField = "ToplantiAdi";
            selectToplantiDetayTA.DataBind();

            selectToplantiAtamaT.DataSource = toplantiListele;
            selectToplantiAtamaT.DataTextField = "ToplantiAdi";
            selectToplantiAtamaT.DataValueField = "ToplantiAdi";
            selectToplantiAtamaT.DataBind();
        }

        protected void btnToplantiAtamaKaydet_OnServerClick(object sender, EventArgs e)
        {
        }
    }
}