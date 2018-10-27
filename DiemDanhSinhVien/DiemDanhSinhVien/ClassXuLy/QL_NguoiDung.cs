using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DiemDanhSinhVien
{
    public class QL_NguoiDung
    {
        public QL_NguoiDung()
        {
        }
        public int Check_Config()
        {
            
            if (Properties.Settings.Default.LTWNCConn == string.Empty)
                return 1;
            SqlConnection conn = new SqlConnection(Properties.Settings.Default.LTWNCConn);
            try
            {
                if (conn.State == System.Data.ConnectionState.Closed)
                    conn.Open();
                return 0;// Kết nối thành công ,cấu hình hợp lệ
            }
            catch 
            {

                return 2;
            }
        }
        public int Check_User(string pUser, string pPass)
        {
            SqlDataAdapter daUser = new SqlDataAdapter("select * from QL_NguoiDung where TenDangNhap='"+pUser+"' and MatKhau='"+pPass+"'",Properties.Settings.Default.LTWNCConn);
            DataTable dt = new DataTable();
            daUser.Fill(dt);
            if (dt.Rows.Count == 0)
                return 0;//user không tồn tại
            else if (dt.Rows[0][2] == null || dt.Rows[0][2].ToString() == "False")
                return 1;// Không hoạt động
            else
                return 2; // Đăng nhập thành công
        }
        public DataTable GetServerName()
        {
            SqlDataSourceEnumerator instance = SqlDataSourceEnumerator.Instance;
            DataTable table = instance.GetDataSources();
            return table;
        }
        public List<string> GetDatabaseName(string pServernName, string pUser, string pPass)
        {
            List<string> _list = new List<string>();
            DataTable dt = new DataTable();
            try
            {
                SqlDataAdapter da = new SqlDataAdapter("select name From sys.databases", "Data Source=" + pServernName + ";Initial Catalog=" + "master" + ";User ID=" + pUser + ";pwd=" + pPass + "");
                da.Fill(dt);
                foreach (DataRow row in dt.Rows)
                {
                    foreach (DataColumn col in dt.Columns)
                    {
                        _list.Add(row[col].ToString());
                    }
                }
            }
            catch
            {

                return null;
            }
            return _list;

        }
        public void ChangeConnectionString(string pServerName,string pDatabase,string pUser,string pPass)
        {
            Properties.Settings.Default.LTWNCConn = "Data Source=" + pServerName + ";Initial Catalog=" + pDatabase + ";User ID=" + pUser + ";pwd =" + pPass + "";
            Properties.Settings.Default.Save();
        }
    }

}
