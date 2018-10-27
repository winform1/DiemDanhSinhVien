using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL.qldiemdanhsvTableAdapters;
using System.Data;

namespace DAL
{
    public class DAL_NguoiDung
    {
        QL_NguoiDungTableAdapter atp_Nguoidung = new QL_NguoiDungTableAdapter();
        public DataTable loadNguoidung()
        {
            return atp_Nguoidung.GetData();
        }
        
    }
}
