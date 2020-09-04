using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.EntitySiniflar
{
    [Table("KullaniciTurleri")]
    public class KullaniciTur
    {
        public int KullaniciTurId { get; set; }
        public string KullaniciTurAd { get; set; }

    }
}
