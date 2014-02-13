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
    public partial class SP_Hot : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    ItemsGet();

                }
                catch
                {
                }
            }
        }
       
       
        private void ItemsGet()
        {

            PagedDataSource objPds = new PagedDataSource();
            List<Products_info> list = Products_info.GetHot();
            objPds.DataSource = list;
            objPds.AllowPaging = true;
            objPds.PageSize = 8;
            objPds.CurrentPageIndex = CurrentPage;
            DataList1.DataSource = objPds;

            DataList1.DataBind();
           
        }
        public int CurrentPage
        {
            get
            {
                object o = ViewState["_CurrentPage"];
                if (o == null)
                    return 0;
                else
                    return (int)o;
            }

            set { ViewState["_CurrentPage"] = value; }
        }
    }
}