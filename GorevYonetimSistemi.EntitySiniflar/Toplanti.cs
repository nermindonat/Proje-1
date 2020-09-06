using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.EntitySiniflar
{
    [Table("Toplantilar")]
    public class Toplanti
    {
        [Key]
        public int ToplantiId { get; set; }
        public string ToplantiAdi { get; set; }
        public string ToplantiIcerigi { get; set; }
        public DateTime? Tarih { get; set; }
        public DateTime? Saat { get; set; }
        public string Yer { get; set; }
    }
}
