using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess;
namespace FlowerShop.uc
{
    public partial class checkout : System.Web.UI.UserControl
    {
       public string tong;
       List<Cart_Temp> list;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!Page.IsPostBack)
            //{
                list= Session["Cart"] as List<Cart_Temp>;
               tong = String.Format("{0:0,0}", Cart_Temp.TongTien(list));
               mylist.DataSource = list;
               mylist.DataBind();
               
                

                if (Session["admin"] != null)
                {
                    int id = Convert.ToInt32(Session["admin"].ToString());
                    users_info us = users_info.getBy_id(id);
                    txtnguoidh.Text = us.fullname;
                    txtEmailndh.Text = us.email;
                    txtdcndh.Text = us.address;
                    txtdtndh.Text = us.phone;
                    txtnguoidh.ReadOnly = true;

                }
                else
                {
                    txtnguoidh.ReadOnly = false;
                }
            //}

        }

      
       

  
        protected void Button1_Click(object sender, EventArgs e)
        {

            int MaOders = Orders_Info.Add(0,txtnguoidh.Text, txtdcndh.Text, txtEmailndh.Text, txtdtndh.Text, txtghichundh.Text, double.Parse(tong), false);
            
               
           //nếu thêm oders thành công thì thêm chi tiết oders
            if (MaOders > 0)
            {
                
                foreach (Cart_Temp a in list)
                {
                    OrderDetails_Info.Add(MaOders, a.pro.id, a.amount);
                    
                }
            }
            Session["Cart"] = null;
            HamXuLy.SendMail(txtEmailndh.Text.Trim(), "Phản hồi thông tin đơn hàng",
                              "Cảm ơn bạn đã đặt hàng tại công ty chúng tôi.<br/> Đơn hàng của bạn đã được gửi tới hệ thống, chúng tôi sẽ phản hồi bạn trong thời gian sớm nhất.");
           
            //xoa session luu gio hang
            Session["Cart"] = null;
            string url = "";
            url = "Default.aspx?page=end";
            Response.Redirect(url);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");

        }
    }
}