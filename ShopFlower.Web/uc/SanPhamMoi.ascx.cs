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
    public partial class SanPhamMoi : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    PagedDataSource objPds = new PagedDataSource();
                    List<Products_info> dt = Products_info.GetNew();
                    objPds.DataSource = dt;
                    objPds.AllowPaging = true;
                    objPds.PageSize = 8;
                    objPds.CurrentPageIndex = CurrentPage;
                    DataList2.DataSource = objPds;
                    DataList2.DataBind();

                }
                catch
                {
                }
            }
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