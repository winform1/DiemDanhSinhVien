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

namespace DiemDanhSinhVien
{
    public partial class Login : Form
    {
        
        QL_NguoiDung Cauhinh = new QL_NguoiDung();
        public Login()
        {
            InitializeComponent();
        }
        public void ProcessLogin()
        {
            int result;
            result = Cauhinh.Check_User(txtDangNhap.Text, txtMatKhau.Text);
            if (result == 0)
            {
                MessageBox.Show("Sai" + lblUser.Text+ " hoặc "+lblPass.Text);
                return;
            }
            else if (result == 1)
            {
                MessageBox.Show("Tài khoản bị khóa");
                return;
            }
            this.Hide();
            frmMain frmMnger = new frmMain();
            frmMnger.ShowDialog();
            this.Show();
        }
        public void ProcessConfig()
        {
            formCauHinh frmCh = new formCauHinh();
            frmCh.ShowDialog();

        }
        private void btnDangNhap_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtDangNhap.Text.Trim()))
            {
                MessageBox.Show("Không được bỏ trống " + lblUser.Text.ToLower());
                this.txtDangNhap.Focus();
                return;
            }
            if (string.IsNullOrEmpty(txtMatKhau.Text.Trim()))
            {
                MessageBox.Show("Không được bỏ trống "+ lblPass.Text.ToLower());
                this.txtMatKhau.Focus();
                return;
            }
            if (Cauhinh.Check_Config() == 0)
                ProcessLogin();
            else if (Cauhinh.Check_Config() == 1)
            {
                MessageBox.Show("Chuỗi cấu hình không tồn tại"); //xử lý cấu hinh
                ProcessConfig();
            }
            else
            {
                MessageBox.Show("Chuỗi cấu hình không phù hợp"); //xử lý cấu hinh
                ProcessConfig();
            }
        }

        private void Login_Load(object sender, EventArgs e)
        {

        }

        private void btnHuy_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
