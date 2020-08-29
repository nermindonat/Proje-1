using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.EntitySiniflar
{
    public class Toplanti
    {
        public int ToplantiId { get; set; }
        public int FkToplantiDetayId { get; set; }
        public string ToplantiAdi { get; set; }
        public string ToplantiIcerigi { get; set; }
        public DateTime Tarih { get; set; }
        public DateTime Saat { get; set; }
        public string Yer { get; set; }
    }
}
