using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.AccessControl;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.EntitySiniflar
{
    public class Atama
    {
        public int AtamaId { get; set; }
        public int FkKisiId { get; set; }
        public int FkAtayanKisiId  { get; set; }
        public int FkGorevId { get; set; }
    }
}
