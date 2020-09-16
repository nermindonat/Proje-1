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
    public partial class AdminBolum : System.Web.UI.Page
    {
        IslemlerDal<Bolum> _bolumDal = new IslemlerDal<Bolum>();
        protected void Page_Load(object sender, EventArgs e)
        {
            BolumListele();
        }

        private void BolumListele()
        {
            var liste = _bolumDal.Listele<Bolum>();
            lvBolum.DataSource = liste;
            lvBolum.DataBind();
        }

        protected void btnSil_OnServerClick(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(tbxBolumId.Value);
            _bolumDal.Sil(id);
            BolumListele();
        }

        protected void btnKaydet_OnServerClick(object sender, EventArgs e)
        {
            _bolumDal.Ekle(new Bolum
            {
                BolumAdi = tbxBolumAd.Value
            });
            BolumListele();
        }

        protected void btnGuncelle_OnServerClick(object sender, EventArgs e)
        {
            _bolumDal.Guncelle(new Bolum
            {
                BolumAdi = tbxBolumAd.Value
            });
            BolumListele();
        }
    }
}