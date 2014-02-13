using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlowerShop.uc
{
    public partial class header : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Trim().Equals("") || TextBox1.Text.Trim().Equals("Nhập Tên-Mã sản phẩm"))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
     "alert('Bạn chưa nhập từ khóa tìm kiếm');", true);
                
            }
            else
            {

                string key = TextBox1.Text.Trim();
                Response.Redirect("default.aspx?page=timkiem&key=" + key + "");

            }
        }
    }
}