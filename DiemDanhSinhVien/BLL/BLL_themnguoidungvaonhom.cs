using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Data;

namespace BLL
{
    public class BLL_themnguoidungvaonhom
    {
        Themnguoidungvaonhom t = new Themnguoidungvaonhom();
        public DataTable load(string manhom)
        {
            return t.loadThemnguoidung(manhom);
        }
    }
}
