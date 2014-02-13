using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess;
using System.IO;
namespace FlowerShop.AdminControls
{
    public partial class TinTuc : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = TinTuc_Info.getall();
            GridView1.DataBind();
            MultiView1.ActiveViewIndex = 0;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            Label2.Text = "Thêm mới tin tức";
            txtNoiDung.Text = "";
            txtTieuDe.Text = "";
            txtTomTat.Text = "";
            bntCapNhat.Text = "Thêm Mới";
            e_image.Visible = false;
            MultiView1.ActiveViewIndex = 1;

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string name = e.CommandName;
            int id = Convert.ToInt32(e.CommandArgument.ToString());

            switch (name)
            {
                case "del":

                    TinTuc_Info.Delete(id);
                    Response.Redirect("admin.aspx?page=tintuc");
                    break;
                case "sua":

                    TinTuc_Info tt = TinTuc_Info.getby_id(id);
                    
                    if (tt != null)
                    {
                        HiddenField_HinhAnh.Value = tt.HinhDaiDien;
                      HiddenField_Id.Value = tt.id.ToString();
                        Label2.Text = "Sửa  tin tức";
                        bntCapNhat.Text = "Cập Nhật";
                        e_image.ImageUrl = "../uploads/tintuc/" + tt.HinhDaiDien;
                        txtTieuDe.Text = tt.TieuDe;
                        txtTomTat.Text = tt.TomTat;
                        txtNoiDung.Text = tt.NoiDung;
                        e_image.Visible = true;
                        MultiView1.ActiveViewIndex = 1;
                    }

                    break;

            }

        }
        protected void Delete_Load(object sender, EventArgs e)
        {
            ((ImageButton)sender).Attributes["onclick"] = "return confirm('Bạn có muốn xóa sản phẩm này không?')";
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }

        protected void bntHuy_Click(object sender, EventArgs e)
        {

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
                flimg.SaveAs(Server.MapPath("~/uploads/tintuc//" + flimg.FileName));
            }
        }
       
        protected void bntCapNhat_Click(object sender, EventArgs e)
        {
            if (bntCapNhat.Text == "Thêm Mới")//chức năng thêm mới
            {
                string hinhanh = "no_picture.gif";
                if (flimg.HasFile == true)
                {
                    hinhanh = flimg.FileName;
                }


                if (TinTuc_Info.Add(hinhanh, txtTieuDe.Text, txtTomTat.Text, txtNoiDung.Text, DateTime.Now, ckbTinhTrang.Checked))
                {
                    upload();
                    ScriptManager.RegisterStartupScript(
                  this, this.GetType(), "alert",
                  "alert('Tạo thành công');location.href='admin.aspx?page=tintuc';", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(
                  this, this.GetType(), "alert",
                  "alert('không thành công,vui lòng kiểm tra lại');location.href='admin.aspx?page=tintuc';", true);
                }
            }
            else//chức năng cập nhật
            {
                string image;
                int id = Convert.ToInt32(HiddenField_Id.Value.Trim());
                if (flimg.HasFile)//nếu cập nhật lại ảnh thì upload ảnh
                {
                    image = flimg.FileName;
                    upload();
                }
                else//không thì lấy ảnh củ
                {
                    image = HiddenField_HinhAnh.Value;
                }

  
                if (TinTuc_Info.Update(id, image, txtTieuDe.Text, txtTomTat.Text, txtNoiDung.Text, ckbTinhTrang.Checked))
                {
                    ScriptManager.RegisterStartupScript(
     this, this.GetType(), "alert",
     "alert('Tin tức đả được Cập nhật thành công');location.href='admin.aspx?page=tintuc';", true);

                }
                else
                {
                    ScriptManager.RegisterStartupScript(
     this, this.GetType(), "alert",
     "alert('Lổi cập nhật');location.href='admin.aspx?page=tintuc';", true);

                }
            }
        }

    }
}