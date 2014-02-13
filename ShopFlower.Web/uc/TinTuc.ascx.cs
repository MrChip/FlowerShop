using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess;
namespace FlowerShop.uc
{
    public partial class TinTuc : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            LoadData();
        }
        private void LoadData()
        {
            //  Repeater1.DataSource = TinTuc_Info.getall();
            //Repeater1.DataBind();
            List<TinTuc_Info> list; ;
            PagedDataSource objPds = new PagedDataSource();
            list = TinTuc_Info.getall();

            objPds.DataSource = list;
            objPds.AllowPaging = true;
            objPds.PageSize = 5;//số bài lặp trong 1 trang

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
            Repeater1.DataSource = objPds;
            Repeater1.DataBind();

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

        protected void bntNext_Click(object sender, EventArgs e)
        {
            CurrentPage += 1;
            LoadData();
        }

        protected void bntTroLai_Click(object sender, EventArgs e)
        {
            CurrentPage -= 1;
            LoadData();
        }
    }
}