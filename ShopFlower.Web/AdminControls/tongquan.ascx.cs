using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace FlowerShop.AdminControls
{
    public partial class tongquan : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bntBanner_Click(object sender, EventArgs e)
        {
            string strFilePath = Request.PhysicalApplicationPath + "App_Themes/themes/FlowerShop/images/";
            HttpPostedFile myFile = FileUpload_Banner.PostedFile;
            int intFileLen = myFile.ContentLength;
            intFileLen = (intFileLen / 1024);
            string strExtension = System.IO.Path.GetExtension(myFile.FileName);
            if (strExtension.ToUpper() != ".PNG")
            {
                //lblMsg.Text = "Hình bạn upload phải là file hình .JPG";
                ScriptManager.RegisterStartupScript(
                    this, this.GetType(), "alert",
                    "alert('Hình bạn upload phải là file hình .PNG');", true);
            }
            else
            {
                string fileSaveSaver = "logo.png";
                // save file len save
                FileUpload_Banner.PostedFile.SaveAs(strFilePath + fileSaveSaver);
                ScriptManager.RegisterStartupScript(
                this, this.GetType(), "alert",
                "alert('Cập nhật thành công-Xóa Cache để xem');location.href='admin.aspx?page=tongquan';", true);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strFilePath = Request.PhysicalApplicationPath + "uploads/slider/";
            HttpPostedFile myFile = FileUpload1.PostedFile;
            string dinhdanganh = System.IO.Path.GetExtension(myFile.FileName);
            if (dinhdanganh.ToUpper() != ".JPG")
            {
                ScriptManager.RegisterStartupScript(
                    this, this.GetType(), "alert",
                    "alert('Hình bạn upload phải là file hình .JPG');", true);
            }
            else
            {
                string fileSaveSaver = "1.jpg";
                // save file len save
                FileUpload1.PostedFile.SaveAs(strFilePath + fileSaveSaver);
                ScriptManager.RegisterStartupScript(
                this, this.GetType(), "alert",
                "alert('Cập nhật thành công-Xóa Cache để xem');location.href='admin.aspx?page=tongquan';", true);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string strFilePath = Request.PhysicalApplicationPath + "uploads/slider/";
            HttpPostedFile myFile = FileUpload2.PostedFile;
            string dinhdanganh = System.IO.Path.GetExtension(myFile.FileName);
            if (dinhdanganh.ToUpper() != ".JPG")
            {
                ScriptManager.RegisterStartupScript(
                    this, this.GetType(), "alert",
                    "alert('Hình bạn upload phải là file hình .JPG');", true);
            }
            else
            {
                string fileSaveSaver = "2.jpg";
                // save file len save
                FileUpload2.PostedFile.SaveAs(strFilePath + fileSaveSaver);
                ScriptManager.RegisterStartupScript(
                this, this.GetType(), "alert",
                "alert('Cập nhật thành công-Xóa Cache để xem');location.href='admin.aspx?page=tongquan';", true);
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string strFilePath = Request.PhysicalApplicationPath + "uploads/slider/";
            HttpPostedFile myFile = FileUpload3.PostedFile;
            string dinhdanganh = System.IO.Path.GetExtension(myFile.FileName);
            if (dinhdanganh.ToUpper() != ".JPG")
            {
                ScriptManager.RegisterStartupScript(
                    this, this.GetType(), "alert",
                    "alert('Hình bạn upload phải là file hình .JPG');", true);
            }
            else
            {
                string fileSaveSaver = "3.jpg";
                // save file len save
                FileUpload3.PostedFile.SaveAs(strFilePath + fileSaveSaver);
                ScriptManager.RegisterStartupScript(
                this, this.GetType(), "alert",
                "alert('Cập nhật thành công-Xóa Cache để xem');location.href='admin.aspx?page=tongquan';", true);
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string strFilePath = Request.PhysicalApplicationPath + "uploads/slider/";
            HttpPostedFile myFile = FileUpload4.PostedFile;
            string dinhdanganh = System.IO.Path.GetExtension(myFile.FileName);
            if (dinhdanganh.ToUpper() != ".JPG")
            {
                ScriptManager.RegisterStartupScript(
                    this, this.GetType(), "alert",
                    "alert('Hình bạn upload phải là file hình .JPG');", true);
            }
            else
            {
                string fileSaveSaver = "4.jpg";
                // save file len save
                FileUpload4.PostedFile.SaveAs(strFilePath + fileSaveSaver);
                ScriptManager.RegisterStartupScript(
                this, this.GetType(), "alert",
                "alert('Cập nhật thành công-Xóa Cache để xem');location.href='admin.aspx?page=tongquan';", true);
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string strFilePath = Request.PhysicalApplicationPath + "uploads/slider/";
            HttpPostedFile myFile = FileUpload5.PostedFile;
            string dinhdanganh = System.IO.Path.GetExtension(myFile.FileName);
            if (dinhdanganh.ToUpper() != ".JPG")
            {
                ScriptManager.RegisterStartupScript(
                    this, this.GetType(), "alert",
                    "alert('Hình bạn upload phải là file hình .JPG');", true);
            }
            else
            {
                string fileSaveSaver = "5.jpg";
                // save file len save
                FileUpload5.PostedFile.SaveAs(strFilePath + fileSaveSaver);
                ScriptManager.RegisterStartupScript(
                this, this.GetType(), "alert",
                "alert('Cập nhật thành công-Xóa Cache để xem');location.href='admin.aspx?page=tongquan';", true);
            }
        }
    }
}