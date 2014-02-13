using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess;
namespace FlowerShop.uc
{
    public partial class chitietsanpham : System.Web.UI.UserControl
    {
        protected Products_info pro = null;
        public string gia;
            
        private string id=null;
        public string duongdan;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                duongdan = Request.Url.ToString();
                
            id = Request.QueryString["id"].ToString();
               
            pro = Products_info.getby_id(id);
            gia = String.Format("{0:0,0 VND}", pro.ppricecurrent);
            Page.Title = pro.pname;
            //san pham cung loai
            int idcategori = pro.id_item;
            List<Products_info> list = Products_info.SanPhamCungLoai(4,idcategori,Convert.ToInt32(id));
            if (list.Count > 0)
            {
                Repeater1.DataSource = list;
                Repeater1.DataBind();
            }
           
            }
            catch (Exception)
            {
                Response.Redirect("Default.aspx");
                
            }
        }
     
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Cart_Temp ct = null;
            if (id != null)
            {
                ct = new Cart_Temp();
                ct.pro = Products_info.getby_id(id);
                ct.amount = 1;

                if (Session["cart"] == null)
                {
                    List<Cart_Temp> listP = new List<Cart_Temp>();
                    listP.Add(ct);
                    Session["cart"] = listP;
                }
                else
                {
                    List<Cart_Temp> listP2 = new List<Cart_Temp>();
                    listP2 = Session["cart"] as List<Cart_Temp>;
                    if (!Cart_Temp.UpdateAmount(listP2, ct, 1))
                    {
                        listP2.Add(ct);
                    }
                    Session["cart"] = listP2;
                }
                ScriptManager.RegisterStartupScript(
     this, this.GetType(), "alert",
     "alert('Sản phẩm đả được thêm vào giỏ hàng của bạn');location.href='default.aspx';", true);

            }
        }
    }
}