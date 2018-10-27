using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL.qldiemdanhsvTableAdapters;
using System.Data;

namespace DAL
{
    public class Themnguoidungvaonhom
    {
        themnguoidungvaonhomTableAdapter atp_themnguoidung = new themnguoidungvaonhomTableAdapter();
        public DataTable loadThemnguoidung(string Manhom)
        {
            return atp_themnguoidung.GetData(Manhom);
        }
    }
}
