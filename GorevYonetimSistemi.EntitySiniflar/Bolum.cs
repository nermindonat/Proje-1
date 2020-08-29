using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.AccessControl;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.EntitySiniflar
{
    public class Bolum
    {
        public int BolumId { get; set; }
        public int FkOkulId { get; set; }
        public string BolumAdi { get; set; }
    }
}
