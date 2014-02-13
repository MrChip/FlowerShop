using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess;
namespace FlowerShop.uc
{
    public partial class quenmatkhau : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "lấy lại mật khẩu";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
                //tạo 1 mật khẩu mới với hàm radom
                string mk = HamXuLy.RandomString(6, true, true);
                users_info us = users_info.checkemail(txtemail.Text.Trim());
                us.password = HamXuLy.MaHoa(mk);
                if (us != null)
                {


                    try
                    {
                        HamXuLy.SendMail(us.email, "Mật khẩu của bạn.", "Xin chào " + us.fullname + "! đây là mật khẩu mới của bạn <br/><b>" + mk + "</b><br/><br/>Rất mong được phục vụ bạn!");
                        this.Label3.Visible = true;
                        HyperLink1.Visible = true;
                        Button1.Enabled = false;

                        users_info.Update(us);
                    }
                    catch
                    {

                    }
                
            }
        }
    }
}