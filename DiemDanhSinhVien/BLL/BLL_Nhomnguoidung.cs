using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Data;

namespace BLL
{
    public class BLL_Nhomnguoidung
    {
        DAL_NhomNguoiDung nhomnguoidung = new DAL_NhomNguoiDung();
        public DataTable loadNhomnguoidung()
        {
            return nhomnguoidung.loadNhomnguoidung();
        }
    }
}
