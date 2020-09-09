using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GorevYonetimSistemi.VeriKatmani;

namespace GorevYonetimSistemi.Proje.Ogrenci
{
    public partial class OgrenciToplanti : System.Web.UI.Page
    {
        private SessionKontrol _sessionKontrol = new SessionKontrol();
        protected void Page_Load(object sender, EventArgs e)
        {
            int kullaniciTurId = Convert.ToInt32(Session["KullaniciTurId"]);
            string url = HttpContext.Current.Request.Url.AbsolutePath;
            var kontrolUrl = _sessionKontrol.SessionKontrolu(kullaniciTurId, url);
            Response.Redirect(kontrolUrl);
        }
    }
}