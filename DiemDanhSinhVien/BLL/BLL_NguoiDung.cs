using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Data;

namespace BLL
{
    public class BLL_NguoiDung
    {
        DAL_NguoiDung nguoidung = new DAL_NguoiDung();
        
        public DataTable loadNguoidung()
        {
            return nguoidung.loadNguoidung();
        }
    }
}
