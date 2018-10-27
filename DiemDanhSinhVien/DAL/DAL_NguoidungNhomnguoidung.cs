using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL.qldiemdanhsvTableAdapters;
using System.Data;

namespace DAL
{
    public class DAL_NguoidungNhomnguoidung
    {
        QL_NguoiDungNhomNguoiDungTableAdapter atp_NDNND = new QL_NguoiDungNhomNguoiDungTableAdapter();
        public DataTable load()
        {
            return atp_NDNND.GetData();
        }
        public DataTable layDSNguoidungNhomnguoidungByMaNhom(string pManhom)
        {
            return atp_NDNND.GetDataBy(pManhom);
        }
        public int themNguoidungVao(string pTenTK, string pMaNhom,string ghichu)
        {
            try
            {
                return atp_NDNND.themNguoidungVao(pTenTK, pMaNhom, ghichu);
            }
            catch
            {
                return 0;
            }
        }
        public int xoaNguoidungTrongNhom(string tendangnhap, string manhom)
        {
            return atp_NDNND.xoaNguoidungtrongnhom(tendangnhap, manhom);
        }
    }
}
