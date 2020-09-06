using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GorevYonetimSistemi.Proje.Site
{
    public partial class Page : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (string.IsNullOrEmpty((string)Session["AdSoyad"]))
            {
                Response.Redirect("/Site/Login.aspx");
            }


        }

        protected void cikis_OnServerClick(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("/Site/Login.aspx");
        }
    }
}