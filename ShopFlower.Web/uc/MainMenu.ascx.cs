using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess;

namespace FlowerShop.uc
{
    public partial class MainMenu : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = category_info.getparent("true");
            Repeater1.DataBind();
            
        }
       
    }
}