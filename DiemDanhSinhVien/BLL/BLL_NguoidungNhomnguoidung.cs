using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Data;

namespace BLL
{
    public class BLL_NguoidungNhomnguoidung
    {
        DAL_NguoidungNhomnguoidung nguoidungnhomnguoidung = new DAL_NguoidungNhomnguoidung();
        public DataTable loadNguoidungNhomNguoidung()
        {
            return nguoidungnhomnguoidung.load();
        }
        public DataTable loadThemnguoidungvaonhomByMaNhom(string pManhom)
        {
            return nguoidungnhomnguoidung.layDSNguoidungNhomnguoidungByMaNhom(pManhom);
        }
        public int themNguoidungVao(string pTenTK, string pMaNhom, string ghichu)
        {
            return nguoidungnhomnguoidung.themNguoidungVao(pTenTK, pMaNhom, ghichu);
        }
        public int xoaNguoidungTrongNhom(string tendangnhap, string manhom)
        {
            return nguoidungnhomnguoidung.xoaNguoidungTrongNhom(tendangnhap, manhom);
        }
    }
}
