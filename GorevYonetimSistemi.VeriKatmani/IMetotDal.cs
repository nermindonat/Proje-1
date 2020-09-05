using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.VeriKatmani
{
    public interface IMetotDal
    {
        List<object> KullaniciTurListe(int kisiId, int kullaniciTurId);
    }
}
