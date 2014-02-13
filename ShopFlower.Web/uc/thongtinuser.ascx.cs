using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess;

namespace FlowerShop.uc
{
    public partial class ThongTinUser : System.Web.UI.UserControl
    {
        public users_info us;
        public int id;
        protected void Page_Load(object sender, EventArgs e)
        {

            

            if (Session["admin"] != null)
            {
                id = int.Parse(Session["admin"].ToString());
                us = users_info.getBy_id(id);
                txtuser.Text = us.username;
                txthoten.Text = us.fullname;
                txtsdt.Text = us.phone;
                txtemail.Text = us.email;
                txtngaysinh.Text = us.birdthday;
                txtdiachi.Text = us.address;
            }
            else
            {
                Response.Redirect("default.aspx");
            }



        }

        protected void bntCapNhat_Click(object sender, EventArgs e)
        {
            us.username = txtuser.Text;
            us.fullname = txthoten.Text;
            us.phone = txtsdt.Text;
            us.email = txtemail.Text;
            us.birdthday = txtngaysinh.Text;
            us.address = txtdiachi.Text;
            if ( users_info.Update(us))
            {
                 Label1.Text = "Update Thành Công !";
            }
            else
            {
             Label1.Text = "Update không thành công !";
            }
           
        }

        protected void bntDoiMatKhau_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx?page=doimatkhau");
          
        }


    }
}