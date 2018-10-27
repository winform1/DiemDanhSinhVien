using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DiemDanhSinhVien
{
    public partial class formCauHinh : Form
    {
        QL_NguoiDung Cauhinh = new QL_NguoiDung();
        public formCauHinh()
        {
            InitializeComponent();
        }

        private void cbo_svname_DropDown(object sender, EventArgs e)
        {
            DataTable dt = Cauhinh.GetServerName();
            cbo_svname.Items.Clear();
            foreach (DataRow row in dt.Rows)
            {
                string str = row[0] + "\\" + row[1].ToString();
                cbo_svname.Items.Add(str);
            }
        }

        private void btnDatabase_DropDown(object sender, EventArgs e)
        {
            cboDatabase.Items.Clear();
            List<string> list = Cauhinh.GetDatabaseName(cbo_svname.Text, txtUsername.Text, txtPassWord.Text);
            if (list==null)
            {
                MessageBox.Show("Thông tin cấu hình chưa chính xác");
                return;
            }
            foreach (string item in list)
            {
                cboDatabase.Items.Add(item);
            }
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            Cauhinh.ChangeConnectionString(cbo_svname.Text, cboDatabase.Text, txtUsername.Text, txtPassWord.Text);
            this.Close();
        }

        private void formCauHinh_Load(object sender, EventArgs e)
        {

        }
    }
}
