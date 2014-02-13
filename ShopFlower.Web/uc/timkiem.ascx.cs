using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess;

namespace FlowerShop.uc
{
    public partial class timkiem : System.Web.UI.UserControl
    {
       public string key=null ;
       public string count = "0";
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                  key = Request.QueryString["key"];
                 ItemsGet();
            }
            catch (Exception)
            {
                Response.Redirect("Default.aspx");

            }
        }
        private void ItemsGet()
        {
            int sl = Convert.ToInt32(DropDownList1.SelectedValue);
            List<Products_info> list; ;
            PagedDataSource objPds = new PagedDataSource();

            list = Products_info.TimKiem(key);
            count = list.Count.ToString();
            //phan trang
            objPds.DataSource = list;

            objPds.AllowPaging = true;
            objPds.PageSize = sl;
            objPds.CurrentPageIndex = CurrentPage;
            Label2.Text = (CurrentPage + 1).ToString() + "\\" + objPds.PageCount.ToString();

            //Disable tien va lui buttons 
            bntTroLai.Enabled = !objPds.IsFirstPage;
            bntNext.Enabled = !objPds.IsLastPage;
            if (objPds.DataSourceCount == 0)
            {

                Label2.Text = "0";
                bntNext.Visible = false;
                bntTroLai.Visible = false;
            }
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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ItemsGet();
        }

        protected void bntTroLai_Click(object sender, EventArgs e)
        {
            //trang hien tai -1
            CurrentPage -= 1;
            ItemsGet();
        }

        protected void bntNext_Click(object sender, EventArgs e)
        {
            //trang hien tai +1
            CurrentPage += 1;
            ItemsGet();
        }
    }
    
}