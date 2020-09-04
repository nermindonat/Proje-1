using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.EntitySiniflar
{
    [Table("KullaniciTurAtama")]
    public class KullaniciTurAtama
    {
        public int KullaniciTurAtamaId { get; set; }
        public int FkKisiId { get; set; }
        public int FkKullaniciTurId { get; set; }
    }
}
