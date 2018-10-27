using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BLL;

namespace DiemDanhSinhVien.Views
{
    public partial class frmThemnguoidung : Form
    {
        BLL_Nhomnguoidung nhomnguoidungbll = new BLL_Nhomnguoidung();
        BLL_NguoidungNhomnguoidung NDNNDbll = new BLL_NguoidungNhomnguoidung();
        BLL_NguoiDung nguoidungBll = new BLL_NguoiDung();
        BLL_themnguoidungvaonhom themBLL = new BLL_themnguoidungvaonhom();

        private string tentaikhoan="";

        public frmThemnguoidung()
        {
            InitializeComponent();
            loadNhomnguoidung();
            loadNguoidung();
        }
        #region hàm load

        void loadNhomnguoidung()
        {
            cbo_nhomnguoidung.DataSource = nhomnguoidungbll.loadNhomnguoidung();
            cbo_nhomnguoidung.DisplayMember = "TenNhom";
            cbo_nhomnguoidung.ValueMember = "MaNhom";
        }
        void loadDsNguoidungNhomnguoidungByMaNhom(string pMaNhom)
        {
            dgv_nguoidungnhomnguoidung.DataSource = themBLL.load(pMaNhom);
        }
        void loadNguoidung()
        {
            dgv_Nguoidung.DataSource = nguoidungBll.loadNguoidung();
        }
        
        #endregion

        private void cbo_nhomnguoidung_SelectedIndexChanged(object sender, EventArgs e)
        {
            string pMaNhom = cbo_nhomnguoidung.SelectedValue.ToString();
            loadDsNguoidungNhomnguoidungByMaNhom(pMaNhom);
        }

        private void btnThemvao_Click(object sender, EventArgs e)
        {

            if (tentaikhoan == "")
            {
                MessageBox.Show("Vui lòng chọn người dùng");
            }
            
            string pMaNhom = cbo_nhomnguoidung.SelectedValue.ToString();
            string ghichu="";
            int them = NDNNDbll.themNguoidungVao(tentaikhoan, pMaNhom, ghichu);
            if (them == 1)
            {
                MessageBox.Show("Thêm thành công");
                tentaikhoan = "";
                loadDsNguoidungNhomnguoidungByMaNhom(pMaNhom);
            }
            else
            {
                MessageBox.Show("Lỗi. Tên đăng nhập đã tồn tại trong nhóm. Vui lòng kiểm tra lại");
            }
        }

        private void dgv_Nguoidung_SelectionChanged(object sender, EventArgs e)
        {
            int r = dgv_Nguoidung.CurrentCell.RowIndex;
            tentaikhoan = dgv_Nguoidung.Rows[r].Cells[0].Value.ToString();
            
        }

        private void btnLayra_Click(object sender, EventArgs e)
        {
            if (tentaikhoan == "")
            {
                MessageBox.Show("Vui lòng chọn tài khoản muốn xóa khỏi nhóm");
                return;
            }
            string manhom = cbo_nhomnguoidung.SelectedValue.ToString();
            int xoa = NDNNDbll.xoaNguoidungTrongNhom(tentaikhoan, manhom);
            if (xoa == 0)
            {
                MessageBox.Show("That bại");
            }
            else
            {
                MessageBox.Show("Xóa thành công");
                loadDsNguoidungNhomnguoidungByMaNhom(manhom);
            }
        }

        private void dgv_nguoidungnhomnguoidung_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }

        private void dgv_nguoidungnhomnguoidung_SelectionChanged(object sender, EventArgs e)
        {

            int r = dgv_nguoidungnhomnguoidung.CurrentCell.RowIndex;
            try
            {
                tentaikhoan = dgv_nguoidungnhomnguoidung.Rows[r].Cells[0].Value.ToString();

            }
            catch
            {

            }
            
        }
    }
}
