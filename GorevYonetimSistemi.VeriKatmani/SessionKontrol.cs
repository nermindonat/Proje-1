using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.VeriKatmani
{
    public class SessionKontrol
    {
        public string SessionKontrolu(int kullaniciTurId, string url)
        {
            using (EntityContext context = new EntityContext())
            {
                string[] urlParcasi = url.Split('/');
                var kisiTur = context.KullaniciTurleri.Where(i => i.KullaniciTurId == kullaniciTurId)
                    .Select(i => i.KullaniciTurAd);
                if (urlParcasi[0] == kisiTur.ToString())
                {
                    return url;
                }
                else
                {
                    return "/Site/";
                }

            }
        }
    }
}
