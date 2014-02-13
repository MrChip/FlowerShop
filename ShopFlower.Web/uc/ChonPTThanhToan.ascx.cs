using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess;

namespace FlowerShop.uc
{
    public partial class checkout1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Trim().Equals(""))
            {
                Labelerr.Text = "Tên đăng nhập không thể bỏ trống";
                TextBox1.Focus();
                return;
            }
            if (TextBox2.Text.Trim().Equals(""))
            {
                Labelerr.Text = "Mật khẩu không thể bỏ trống";
                TextBox2.Focus();
                return;
            }
            users_info dt = new users_info();
            dt = users_info.Checkuser(TextBox1.Text.Trim());
            if (dt != null)
            {
                if (HamXuLy.MaHoa(TextBox2.Text.Trim()).Equals(dt.password))
                {
                    if (dt.status)
                    {
                        Session["admin"] = dt.id;
                        Session["username"] = dt.username;
                        Session["name"] = dt.fullname;
                        Session["role"] = dt.rolecode;
                        Session.Timeout = 30;
                       
                            Response.Redirect("Default.aspx?page=checkout");
                       
                    }
                    else
                    {
                        Labelerr.Text = "Tài khoản của bạn đã bị khóa";
                    }
                }
                else
                {
                    Labelerr.Text = "Mật khẩu không chính xác";
                }
            }
            else
            {
                Labelerr.Text = "Tên đăng nhập này không tồn tại";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx?page=register");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx?page=checkout");
        }
    }
}