using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess;
namespace FlowerShop.AdminControls
{
    public partial class LienHe : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
                GridView1.DataSource = lienhe_info.getall();
                GridView1.DataBind();
            }
        }

        protected void Delete_Load(object sender, EventArgs e)
        {
            ((LinkButton)sender).Attributes["onclick"] = "return confirm('Bạn có muốn xóa ý kiến này không?')";
        }

       protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string name = e.CommandName;
            int id = Convert.ToInt32(e.CommandArgument.ToString());
            lienhe_info lh = lienhe_info.Get_byid(id);

            switch (name)
            {
                case "xoa":
                    lienhe_info.Delete(id);
                    Response.Redirect("admin.aspx?page=lienhe");
                    break;
                case "xem":
                    txthoten.Text = lh.hoten;
                    txtdienthoai.Text = lh.phone;
                    txtemail.Text = lh.email;
                    txtghichu.Text = lh.noidung;
                    HiddenField1.Value = id.ToString();
                    ckbDaDoc.Checked = lh.TrangThai;
                    MultiView1.ActiveViewIndex = 1;
                    break;
                case "guoimail":
                    txtTo.Text = lh.email;
                    MultiView1.ActiveViewIndex = 2;

                    break;
            }
        }

        protected void bntCapNhat_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(HiddenField1.Value);
            bool trangthai = ckbDaDoc.Checked;
            if (lienhe_info.Update(id, trangthai))
            {
                Label3.Text = "Cập nhật thành công";
            }
            else
            {
                Label3.Text = "Cập nhật không thành công";
            }

        }

        protected void bntHuy_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(HiddenField1.Value.ToString());
            if (lienhe_info.Delete(id))
            {
                Response.Redirect("admin.aspx?page=LienHe");
            }
            else
            {
                Label3.Text = "Xóa Thất bại";
            }

        }

        protected void bntQuayLai_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin.aspx?page=lienhe");
        }

        protected void bntGuoiMail_Click(object sender, EventArgs e)
        {
            if (HamXuLy.SendMail(txtTo.Text, txttitle.Text, FreeTextBox1.Text))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Email đã được gửi đến khách hàng');location.href='admin.aspx?page=lienhe';", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(
               this, this.GetType(), "alert",
               "alert('Gửi Mail không thành công,vui lòng kiểm tra lại');location.href='admin.aspx?page=lienhe';", true);
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int kq = int.Parse(DropDownList1.SelectedValue);
           
            if (kq== 0)
            {
                MultiView1.ActiveViewIndex = 0;
               
                GridView1.DataSource = lienhe_info.getall();
                GridView1.DataBind();
            }
            if (kq == 1)
            {
                MultiView1.ActiveViewIndex = 0;

                GridView1.DataSource = lienhe_info.GetXuLy(false);
                GridView1.DataBind();
                MultiView1.ActiveViewIndex = 0;
            }
            else
            {
                kq = 0;

                GridView1.DataSource = lienhe_info.GetXuLy(true);
                GridView1.DataBind();
                MultiView1.ActiveViewIndex = 0;
            }
        }
    }
}