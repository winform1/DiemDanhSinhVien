using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DiemDanhSinhVien
{
    public class LoginResult
    {
        static LoginResult disabled;

        public static LoginResult Disabled
        {
            get { return LoginResult.disabled; }
            set { LoginResult.disabled = value; }
        }
        private static LoginResult invalid;

        public static LoginResult Invalid
        {
            get { return LoginResult.invalid; }
            set { LoginResult.invalid = value; }
        }
        private static LoginResult success;

        public static LoginResult Success
        {
            get { return LoginResult.success; }
            set { LoginResult.success = value; }
        }
    }
}
