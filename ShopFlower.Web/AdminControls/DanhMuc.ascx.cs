using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess;

namespace FlowerShop.AdminControls
{
    public partial class DanhMuc : System.Web.UI.UserControl
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                DataList1.DataSource = category_info.getall();
                DataList1.DataBind();

                //đổi tên hiển thị và danh mục con
                foreach (DataListItem li in DataList1.Items)
                {

                    Label danhmucgoc = (Label)li.FindControl("lblparent");
                    Label active = (Label)li.FindControl("lblactive");
                    
                    if (active.Text.Equals("True"))
                    {
                        active.Text = "Hiển thị";
                    }
                    else
                    {
                        active.Text = "Không hiển thị";
                    }
                    if (danhmucgoc.Text == "0")
                    {
                        danhmucgoc.Text = "Root";
                    }
                    else
                    {
                        danhmucgoc.Text = "Danh Mục Con";
                    }
                }

                MultiView1.ActiveViewIndex = 0;
                
            }
        }


        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin.aspx?page=danhmuc");
        }
      

       


        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            //MultiView1.ActiveViewIndex = 1;
            //DropDownList2.DataSource = items.getparent("1");
            //DropDownList2.DataTextField = "names";
            //DropDownList2.DataValueField = "id";
            ////DropDownList2.Items.Add(new ListItem("roor", "0"));
            //DropDownList2.DataBind();
            //DropDownList2.Items.Add(new ListItem("--Root--", "0"));
        }

        protected void Delete_Load(object sender, EventArgs e)
        {
            ((ImageButton)sender).Attributes["onclick"] = "return confirm('Bạn có muốn xóa mục này không?')";
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
        }
       
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(HiddenField1.Value);
            int parentid = Convert.ToInt32(DropDownList1.SelectedValue);
            int no = Convert.ToInt32(e_txtvitri.Text.Trim());
            string tieude = e_txtten.Text.Trim();
            int status;
            if (e_CheckBox1.Checked)
            {
                status = 1;
            }
            else
            {
                status = 0;
            }
            //try
            //{
            category_info.Update(id, parentid, tieude, no, status);
            Response.Redirect("admin.aspx?page=danhmuc");
            //}
            //catch { }
        }


        private string LoadMenu()
        {
            string htmlMenu = "";
            //DataTable dtbRoot = items.getparent("");
            //if (dtbRoot.Rows.Count > 0)
            //{
            //    foreach (DataRow dr1 in dtbRoot.Rows)
            //    {
            //        htmlMenu += "<a style='text-transform:uppercase'><b>" + dr1["names"] + "</b></a>";
            //        DataTable dtbSub = items.getchild(dr1["id"].ToString(), "");
            //        if (dtbSub.Rows.Count > 0)
            //        {
            //            htmlMenu += "<div class='vll'><ul>";
            //            foreach (DataRow dr2 in dtbSub.Rows)
            //            {
            //                htmlMenu += "<li><a href='Default.aspx?page=byitem&item=" + dr2["id"] + "'>" +
            //                            cv(dr2["names"].ToString()) + "</a></li>";
            //            }
            //            htmlMenu += "</ul></div>";
            //        }
            //    }
            //}
            return htmlMenu;
        }

        public string cv(string a)
        {
            string b = "<strong><font color=red>" + a.Substring(0, 1) + "</font></strong>";
            string c = a.Substring(1);
            a = b + c;
            return a;
        }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {

            string name = e.CommandName;
            int id = Convert.ToInt32(e.CommandArgument.ToString());
            HiddenField1.Value = id.ToString();
            switch (name)
            {
                case "del":
                   
                    category_info.Delete(id);
                    Response.Redirect("admin.aspx?page=danhmuc");
                    break;
                case "edit":
                    category_info ct = category_info.getbyid(id.ToString());
                  
                    if (ct!=null)
                    {
                        e_txtten.Text = ct.names;
                        e_txtvitri.Text = ct.no.ToString();
                        if (ct.active)
                        {
                            e_CheckBox1.Checked = true;
                        }
                        else
                        {
                            e_CheckBox1.Checked = false;
                        }
                    }
                    
                    if (ct.parentid == "0")
                    {
                    }
                    else
                    {
                        DropDownList1.DataSource = category_info.getparent("1");
                        DropDownList1.DataTextField = "names";
                        DropDownList1.DataValueField = "id";
                        DropDownList1.DataBind();
                        DropDownList1.SelectedValue = ct.parentid;
                    }
                    DropDownList1.Items.Add(new ListItem("--Root--", "0"));

                    MultiView1.ActiveViewIndex = 2;
                    break;
            }
        }

        protected void lbtThemMoi_Click(object sender, EventArgs e)
        {

            MultiView1.ActiveViewIndex = 1;
            DropDownList2.DataSource = category_info.getparent("1");
            DropDownList2.DataTextField = "names";
            DropDownList2.DataValueField = "id";
           
            DropDownList2.DataBind();
            DropDownList2.Items.Add(new ListItem("--Root--", "0"));
        }

        protected void bntThemMoi_Click(object sender, EventArgs e)
        {
            int parent = Convert.ToInt32(DropDownList2.SelectedValue);
            // Response.Write(parent.ToString());
            int no = Convert.ToInt32(TextBox2.Text.Trim());
            int status;
            if (cbstatus.Checked)
            {
                status = 1;
            }
            else
            {
                status = 0;
            }
            //try
            //{
            category_info.Add(parent, TextBox1.Text.Trim(), no, status);
            Response.Redirect("admin.aspx?page=danhmuc");
            //}
            //catch { }
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            Response.Redirect("admin.aspx?page=danhmuc");
        }
  
    }
}