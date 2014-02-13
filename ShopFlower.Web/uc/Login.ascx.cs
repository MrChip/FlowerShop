using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess;
namespace FlowerShop.uc
{
    public partial class Login : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Đăng nhập";
            TextBox1.Focus();
            if (Session["admin"]!=null)
            {
                Response.Redirect("Default.aspx");
            }
        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            users_info us = new users_info();
            us = users_info.Checkuser(TextBox1.Text.Trim());
            if (us != null)
            {
                if (HamXuLy.MaHoa(TextBox2.Text).Equals(us.password))
                {
                    if (us.status)
                    {
                        Session["admin"] = us.id;
                        Session["username"] = us.username;
                        Session["name"] = us.fullname;
                        Session["role"] = us.rolecode;
                        Session["pass"] = us.password;
                        Session.Timeout = 30;

                        Response.Redirect("Default.aspx");
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
    }
}