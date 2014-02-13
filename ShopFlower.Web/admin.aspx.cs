using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlowerShop
{
    public partial class admin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                PlaceHolder1.Controls.Add(LoadControl("AdminControls/index.ascx"));
            }
            else
            {
                PlaceHolder1.Controls.Add(LoadControl("AdminControls/login.ascx"));
            }
        }
    }
}