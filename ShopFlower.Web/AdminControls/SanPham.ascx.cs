using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess;
using DataAccess;
using System.IO;

namespace FlowerShop.AdminControls
{
    public partial class SanPham : System.Web.UI.UserControl
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            GridView1.DataSource = Products_info.getall();
            GridView1.DataBind();

        }
       
        public void resetForm()
        {
            txt_tieude.Text = "";
            txt_mota.Text = "";
            FreeTextBox2.Text = "";
            txtgiacu.Text = "";
            txtgiahientai.Text = "";

        }
        protected void btn_Insert_Click(object sender, EventArgs e)
        {
            int pnew = 0, pkhuyenmai = 0, phot = 0, pactive = 0;
            string pngaydang = DateTime.Now.ToShortDateString();
            int id_item = Convert.ToInt32(DropDownList1.SelectedValue);

            if (chkisnew.Checked)
            {
                pnew = 1;
            }
            if (chkissaleoff.Checked)
            {
                pkhuyenmai = 1;
            }
            if (chkbestsell.Checked)
            {
                phot = 1;
            }
            if (chk_enable.Checked)
            {
                pactive = 1;
            }

            string image = "no_picture.gif";
            string pname = txt_tieude.Text.Trim();
            string pmota = txt_mota.Text.Trim();
            string pchitiet = FreeTextBox2.Text.Trim();
            string pgiahientai = txtgiahientai.Text.Trim();
            string pgiacu = txtgiacu.Text.Trim();
            if (flimg.HasFile == true)
            {
                image = flimg.FileName;
            }


            if (Products_info.Add(id_item, pname, pmota, pchitiet, pgiahientai, pgiacu, image, pnew, pkhuyenmai, phot,
                               pngaydang, pactive))
            {
                upload();
                ScriptManager.RegisterStartupScript(
   this, this.GetType(), "alert",
   "alert('Sản phẩm đã được thêm mới thành công');location.href='admin.aspx?page=sanpham';", true);


            }
            else
            {
                ScriptManager.RegisterStartupScript(
this, this.GetType(), "alert",
"alert('thêm sản phẩm không thành công');", true);
            }




        }
        protected void btn_Cancel_Click(object sender, EventArgs e)
        {
            Response.Write("window.history.go(-1)");
        }
        public void upload()
        {
            if (flimg.HasFile)
            {
                string img = Path.GetExtension(flimg.PostedFile.FileName);
                switch (img.ToLower())
                {
                    case ".jpg":
                    case ".jpeg":
                    case ".gif":
                        break;
                    default:
                        return;
                }
                flimg.SaveAs(Server.MapPath("~/uploads/products//" + flimg.FileName));
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        protected void Delete_Load(object sender, EventArgs e)
        {
            ((ImageButton)sender).Attributes["onclick"] = "return confirm('Bạn có muốn xóa sản phẩm này không?')";
        }
        //// update san pham 
        protected void Button2_Click(object sender, EventArgs e)
        {
            int pnew = 0, pkhuyenmai = 0, phot = 0, pactive = 0;
            string image, e_pngaydang;
            int id_item = Convert.ToInt32(e_ddlitem.SelectedValue);
            if (e_chnew.Checked)
            {
                pnew = 1;
            }
            if (e_chkhuyenmai.Checked)
            {
                pkhuyenmai = 1;
            }
            if (e_chhot.Checked)
            {
                phot = 1;
            }
            if (e_chactive.Checked)
            {
                pactive = 1;
            }
            if (e_chngaydang.Checked)
            {
                e_pngaydang = DateTime.Now.ToShortDateString();
            }
            else
            {
                e_pngaydang = HiddenField2.Value;
            }
            if ((e_id.Text == "") || (e_tieudeu.Text == "") || (e_mota.Text == "") || (e_chitiet.Text == "") ||
                (e_giahientai.Text == ""))
            {
                Response.Write("<script>window.alert('Lỗi!Hãy kiểm tra lại dữ liệu của bạn')</script>");
            }
            else
            {
                if (e_FileUpload1.HasFile)
                {
                    image = e_FileUpload1.FileName;
                    upload_update();
                }
                else
                {
                    image = HiddenField1.Value;
                }

                int id = Convert.ToInt32(e_id.Text.Trim());
                string pnameu = e_tieudeu.Text.Trim();
                string pmota = e_mota.Text.Trim();
                string pchitiet = e_chitiet.Text.Trim();

                string giamoi = e_giahientai.Text.Trim();
                string giahientai = e_giacu.Text.Trim();
                if (Products_info.Update(id, id_item, pnameu, pmota, pchitiet, giamoi, giahientai, image, pnew, pkhuyenmai,
                                        phot, e_pngaydang, pactive))
                {
                    ScriptManager.RegisterStartupScript(
     this, this.GetType(), "alert",
     "alert('Sản phẩm đả được Cập nhật thành công');location.href='admin.aspx?page=sanpham';", true);

                }
                else
                {
                    ScriptManager.RegisterStartupScript(
     this, this.GetType(), "alert",
     "alert('Lổi cập nhật');location.href='admin.aspx?page=sanpham';", true);

                }

            }
        }
        public void upload_update()
        {
            string img = Path.GetExtension(e_FileUpload1.PostedFile.FileName);
            switch (img.ToLower())
            {
                case ".jpg":
                case ".jpeg":
                case ".gif":
                    break;
                default:
                    return;
            }
            e_FileUpload1.SaveAs(Server.MapPath("~/uploads/products//" + e_FileUpload1.FileName));
        }
        //sự kiện phân trang
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }
        //sự kiện thêm mới
        protected void lbtThemMoi_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            DropDownList1.DataSource = category_info.category_GetDanhMucCon(true);
            DropDownList1.DataTextField = "names";
            DropDownList1.DataValueField = "id";
            chk_enable.Checked = true;
            txt_mota.Text = "MIỄN PHÍ ĐƠN HÀNG TỪ 1.000.000 VND";
            DropDownList1.DataBind();
        }
        //bắt sự kiện 2 nút trong gridview1
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string name = e.CommandName;
            int id = Convert.ToInt32(e.CommandArgument.ToString());
            Products_info pr = Products_info.getby_id(id.ToString());
            switch (name)
            {
                case "kichhoat":
                    bool active;
                    if (pr.active== true)
                    {
                        active = false;
                    }
                    else
                    {
                        active = true;
                    }
                    Products_info.Active_pro(active,id);
                    Response.Redirect("admin.aspx?page=sanpham");
                    break;
                case "del":

                    Products_info.Delete(id.ToString());
                    Response.Redirect("admin.aspx?page=sanpham");
                    break;
                case "sua":

                    e_ddlitem.DataSource = category_info.category_GetDanhMucCon(true); ;
                    e_ddlitem.DataTextField = "names";
                    e_ddlitem.DataValueField = "id";
                    e_ddlitem.DataBind();
                    //e_ddlitem.SelectedValue = dt_cata_item.Rows[0][2].ToString();
                    //
                   
                    if (pr != null)
                    {
                        HiddenField1.Value = pr.pimage;
                        HiddenField2.Value = pr.pngaydang;

                        e_image.ImageUrl = "../uploads/products/" + pr.pimage;
                        e_id.Text = pr.id.ToString();
                        e_tieudeu.Text = pr.pname;
                        e_mota.Text = pr.pmota;
                        e_chitiet.Text = pr.pchitiet;
                        e_giahientai.Text = pr.ppricecurrent.ToString();
                        e_giacu.Text = pr.ppriceold.ToString();

                        e_chnew.Checked = Convert.ToBoolean(pr.pnew);
                        e_chkhuyenmai.Checked = Convert.ToBoolean(pr.pkhuyenmai);
                        e_chhot.Checked = Convert.ToBoolean(pr.phot);
                        e_chactive.Checked = Convert.ToBoolean(pr.active);
                        e_ddlitem.SelectedValue = pr.id_item.ToString();
                        // e_chngaydang.Checked = Convert.ToBoolean(dt.Rows[0][11].ToString());
                        MultiView1.ActiveViewIndex = 2;
                    }

                    break;

            }
        }
        //tìm kiếm
        protected void btnTimKiem_Click(object sender, ImageClickEventArgs e)
        {
            string key = TextBox1.Text.Trim();

            MultiView1.ActiveViewIndex = 0;

            List<Products_info> list = Products_info.TimKiem(key);
            if (list.Count > 0)
            {
                GridView1.DataSource = list;
                GridView1.DataBind();
                Label5.Text = "";
            }
            else
            {
                GridView1.DataSource = list;
                GridView1.DataBind();
                Label5.Text = "Rất tiếc!Chúng tôi không tìm thấy kết quả nào!";
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}