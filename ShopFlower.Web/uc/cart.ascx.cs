using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess;

namespace FlowerShop.uc
{
    public partial class cart : System.Web.UI.UserControl
    {
        
        public String url_checkout = "https://www.nganluong.vn/advance_payment.php";

        List<Cart_Temp> list = null;
        protected string tong = "0";
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Giỏ Hàng";
            try
            {
                list = Session["Cart"] as List<Cart_Temp>;
                if (!Page.IsPostBack)
                {
                    if (Session["Cart"] != null)
                    {
                        BindRepeater();
                    }
                }
            }
            catch (Exception)
            {
                Response.Redirect("Default.aspx");

            }
        }
        
        protected void btnRemove_Click(object sender, EventArgs e)
        {

        }

        protected void rptcartV_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName.ToLower() == "update")
            {
                TextBox txtSl = (TextBox)e.Item.FindControl("txtSoluong");
                string pid = e.CommandArgument.ToString();
                Cart_Temp ct = Cart_Temp.FindProduct(list, int.Parse(pid));
                if (ct != null)
                {
                    ct.amount = int.Parse(txtSl.Text);
                }
                
                BindRepeater();
            }
            if (e.CommandName.ToLower() == "remove")
            {                
                string pid = e.CommandArgument.ToString();
                
                if (pid != null)
                {
                    Cart_Temp.Delete(list, int.Parse(pid));
                }
                BindRepeater();
            }
            if (e.CommandName.ToLower() == "checkout")
            {
                if (Session["user"] == null)
                {
                    Response.Redirect("AccLogin.aspx");
                    return;
                }
              
                Session["Cart"] = null;
                Response.Redirect("Default.aspx");
            }

        }

        private void BindRepeater()
        {
            //tong = Cart_Temp.TongTien(list);
            tong = String.Format("{0:0,0}", Cart_Temp.TongTien(list));
            rptcartV.DataSource = list;
            rptcartV.DataBind();
        }



     

        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {

            //Định nghĩa các thông tin cần thiết và tạo nút thanh toán 
            String receiver = "ngoxuanthe@gmail.com";
            String comments = "Shop-T2";
            String return_url = "https://nganluong.vn/";
            String price = Cart_Temp.TongTien(list).ToString();
            String product = "Sản Phẩm T2-Shop";
            this.url_checkout += "?receiver=" + receiver + "&comments=" + comments + "&return_url=" + return_url + "&product=" + product + "&price=" + price;
            Response.Redirect(url_checkout);
        }

     

        protected void bntTiepTuc_Click(object sender, EventArgs e)
        {
           
        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Session["Cart"] == null)
            {


                Response.Redirect("Default.aspx");
            }
            else
            {
                if (Session["admin"] == null)
                {
                    Response.Redirect("Default.aspx?page=chonptthanhtoan");
                }
                else
                {
                    Response.Redirect("Default.aspx?page=checkout");

                }
            }
        }

       
    
    }
}