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
    public partial class UserGorev : System.Web.UI.UserControl
    {
        IslemlerDal<Gorev> _gorevDal = new IslemlerDal<Gorev>();
        MetotDal _metotDal = new MetotDal();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GorevListele();
                GorevAtamaListele();
            }
        }

        private void GorevAtamaListele()
        {
            var gorevAtamaListe = _metotDal.GorevAtama();
            lvGorevAtama.DataSource = gorevAtamaListe;
            lvGorevAtama.DataBind();
        }

        private void GorevListele()
        {
            var gorevListe = _gorevDal.Listele<Gorev>();
            dlGorev.DataSource = gorevListe;
            dlGorev.DataBind();
        }

        protected void btnGorevKaydet_OnServerClick(object sender, EventArgs e)
        {
            
        }
    }
}