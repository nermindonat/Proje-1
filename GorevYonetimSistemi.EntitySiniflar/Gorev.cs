using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.AccessControl;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.EntitySiniflar
{
    public class Gorev
    {
        public int GorevId { get; set; }
        public int FkToplantiId { get; set; }
        public string GorevAdi { get; set; }
        public string GorevIcerigi { get; set; }
        public DateTime SonTarih { get; set; }
        public DateTime SonSaat { get; set; }
        public bool Durum { get; set; }
    }
}
