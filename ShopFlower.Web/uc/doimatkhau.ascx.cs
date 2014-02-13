using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess;

namespace FlowerShop.uc
{
    public partial class doimatkhau : System.Web.UI.UserControl
    {
        users_info us;
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
         
            if (Session["admin"]!=null)
            {
                us = users_info.getBy_id(int.Parse(Session["admin"].ToString()));
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //kiểm tra mật khẩu có đúng không
            if (HamXuLy.MaHoa(txtpasscu.Text).Equals(us.password))
            {
                //nếu đúng thì cập nhật
                if (users_info.doipass(us.id, HamXuLy.MaHoa(txtpass.Text)))
                {
                    Label1.Text = "Đổi password thành công";
                }
                
            }
            else
            {
                //không thì thôi
                Label1.Text = "Sai Mật khẩu củ";
                txtpasscu.Focus();
            }
        }
    }
}