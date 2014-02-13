using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess;
namespace FlowerShop.uc
{
    public partial class TinTuc_ChiTiet : System.Web.UI.UserControl
    {
        public string id;
       public TinTuc_Info tintuc;
       public string duongdan;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            id = Request.QueryString["id"].ToString();
           tintuc = TinTuc_Info.getby_id(int.Parse(id));
           Page.Title = tintuc.TieuDe;
           duongdan = Request.Url.ToString();
           Repeater1.DataSource = TinTuc_Info.GetTop5();
           Repeater1.DataBind();
        }
    }
}