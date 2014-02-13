using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess;
namespace FlowerShop.uc
{
    public partial class lienhe : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Liên hệ";
            if (Session["admin"]!=null)
            {
                users_info us=users_info.getBy_id(int.Parse(Session["admin"].ToString()));
                TextBox3.Text = us.phone;
                TextBox2.Text = us.email;
                TextBox1.Text = us.fullname;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //thêm liên hệ
                lienhe_info.add(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text,false);
                TextBox4.Text = "";
                TextBox3.Text = "";
                TextBox2.Text = "";
                TextBox1.Text = "";
                Label1.Text = "Cảm ơn bạn đã gửi phản hồi tới chúng tôi.";
            }
            catch
            {
                Label1.Text = "Xuất hiện lỗi khi gửi phản hồi.";
            }
        }

        
    }
}