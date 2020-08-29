using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.EntitySiniflar
{
    public class Bildirim
    {
        public int BildirimId { get; set; }
        public int FkKisiId { get; set; }
        public int FkGorevId { get; set; }
        public string Icerik { get; set; }
        public string BildirimOkumaDurum { get; set; }
        public DateTime BildirimOkumaTarih { get; set; }
        public int HatirlatmaSayisi { get; set; }

        
    }
}
