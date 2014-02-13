using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess;

namespace FlowerShop.uc
{
    public partial class reg : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                Response.Redirect("Default.aspx");
            }
           

        }
     
        protected void bntdangky_Click(object sender, EventArgs e)
        {
           
            
                string pass = HamXuLy.MaHoa(txtpass.Text.Trim());
                //kiểm tra email trùng không
                users_info us = users_info.checkemail(txtemail.Text.Trim());
                if (us == null)
                {
                    //kiểm tra user trùng không
                    us = users_info.Checkuser(txtuser.Text);
                    if (us == null)
                    {
                        if (users_info.Add(txtuser.Text.Trim(), txtemail.Text.Trim(), pass, txthoten.Text.Trim(), txtdiachi.Text, txtngaysinh.ToString(), txtsdt.Text, "0", true))
                        {
                            ScriptManager.RegisterStartupScript(
         this, this.GetType(), "alert",
         "alert('Tạo tài khoản thành công! mời bạn đăng nhập');location.href='Default.aspx?page=login';", true);
                            

                        }
                        else
                        {
                            Response.Write("<script> alert('Lổi trong quá trình tạo tài khoản,vui lòng liên hệ admin để sửa chữa!')</script>");
                        }
                    }
                    else
                    {
                        Label1.Text = "đã có người đăng ký với user này";
                    }

                }
                else
                {
                    Label1.Text = "đã có người đăng ký với email này!";
                }
            
        }

    }
}
