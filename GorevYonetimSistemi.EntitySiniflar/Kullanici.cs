using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.EntitySiniflar
{
    [Table("Kullanicilar")]
    public class Kullanici
    {
        [Key]
        public int KisiId { get; set; }
        [ForeignKey("FkOkulId")]
        public int FkOkulId { get; set; }
        [ForeignKey("FkBolumId")]
        public int FkBolumId { get; set; }
        [ForeignKey("FkAbdId")]
        public int FkAbdId { get; set; }
        [ForeignKey("FkUnvanId")]
        public int FkUnvanId { get; set; }
        [ForeignKey("FkIdariGorevUnvanId")]
        public int FkIdariGorevUnvanId { get; set; }
        public string Ad { get; set; }
        public string Soyad { get; set; }
        public string Email { get; set; }
        public string Sifre { get; set; }

        


    }
}
