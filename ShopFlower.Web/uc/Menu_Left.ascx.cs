using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess;

namespace FlowerShop.uc
{
    public partial class Menu_Left : System.Web.UI.UserControl
    {
        public List<Cart_Temp> item = new List<Cart_Temp>();
        public int soluong = 0;
        public  string tong="0";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Literal1.Text = LoadMenu();
            }
            if (Session["Cart"] != null)
            {
                item = Session["Cart"] as List<Cart_Temp>;
                soluong = Cart_Temp.TongSoLuong(item);
                tong = String.Format("{0:0,0}", Cart_Temp.TongTien(item));
                
            }
        }
        private string LoadMenu()
        {


            string htmlMenu = "";
            //lấy danh mục cha
            List<category_info> listroot = category_info.getparent("True");
            if (listroot.Count > 0)
            {
                foreach (category_info dr1 in listroot)
                {
                    htmlMenu += "<div class='box-orange icon-24-brush wp-modulecontainer'><div class='wp-modulecontainer_inner'>" +
"<h3 class='wp-moduletitle'><span class='wp-moduleicon'>" + dr1.names + "</span></h3>"+
"<div class='wp-modulecontent'><ul id='menu-thoi-trang-nu' class='menu-treemenu'>";
                    //lấy danh mục con của danh mục cha
                    List<category_info> listsub = category_info.getchild(dr1.id.ToString(), "True");
                    if (listsub.Count > 0)
                    {
                        htmlMenu += "<li id='menu-item-496' class='menu-item menu-item-type-taxonomy menu-item-object-category menu-item-496'>";
                        foreach (category_info dr2 in listsub)
                        {
                            
                            htmlMenu += " <a  href='Default.aspx?page=danhmuc&id=" + dr2.id + "' ><span>" +
                                        dr2.names + "</span></a>";
                           
                        }
                        htmlMenu += "</li></ul></div><div class='clearbreak'></div></div></div>";
                    }
                }
            }
            return htmlMenu;
        }

       
    }
}