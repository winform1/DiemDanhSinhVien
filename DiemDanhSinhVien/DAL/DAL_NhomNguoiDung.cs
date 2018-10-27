using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL.qldiemdanhsvTableAdapters;
using System.Data;

namespace DAL
{
    public class DAL_NhomNguoiDung
    {
        QL_NhomNguoiDungTableAdapter atp_nhomnguoidung = new QL_NhomNguoiDungTableAdapter();
        public DataTable loadNhomnguoidung()
        {
            return atp_nhomnguoidung.GetData();
        }
    }
}
