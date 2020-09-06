using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Security.AccessControl;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.EntitySiniflar
{
    [Table("Gorevler")]
    public class Gorev
    {
        [Key]
        public int GorevId { get; set; }
        public int FkToplantiId { get; set; }
        [ForeignKey("FkToplantiId")]
        public virtual Toplanti Toplanti { get; set; }
        public string GorevAdi { get; set; }
        public string GorevIcerigi { get; set; }
        public DateTime? SonTarih { get; set; }
        public DateTime? SonSaat { get; set; }
        public bool Durum { get; set; }

    }
}
