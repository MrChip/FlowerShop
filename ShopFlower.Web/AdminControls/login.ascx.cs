using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess;
namespace FlowerShop.AdminControls
{
    public partial class login : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bntLogin_Click(object sender, EventArgs e)
        {
            if (txtuser.Text.Trim().Equals(""))
            {
                Label1.Text = "Tên đăng nhập không thể bỏ trống";
                txtuser.Focus();
                return;
            }
            if (txtpass.Text.Trim().Equals(""))
            {
                Label1.Text = "Mật khẩu không thể bỏ trống";
                txtpass.Focus();
                return;
            }
            users_info us;
            us = users_info.Checkuser(txtuser.Text.Trim());
            if (us!=null)
            {
                if (HamXuLy.MaHoa(txtpass.Text).Equals(us.password))
                {
                    if (us.status==true)
                    {
                        Session["admin"] = us.id;
                        Session["username"] = us.username;
                        Session["name"] = us.fullname;
                        Session["role"] = us.rolecode;
                        
                        Response.Redirect("admin.aspx");
                    }
                    else
                    {
                        Label1.Text = "Tài khoản của bạn đã bị khóa";
                    }
                }
                else
                {
                    Label1.Text = "Mật khẩu không chính xác";
                }
            }
            else
            {
                Label1.Text = "Tên đăng nhập này không tồn tại";
            }
        }
    }
}