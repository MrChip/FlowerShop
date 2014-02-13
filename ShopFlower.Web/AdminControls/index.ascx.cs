using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlowerShop.AdminControls
{
    public partial class index : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            hpDanhMuc.Enabled = false;
            hpLienHe.Enabled = false;
            Hp_DatHang.Enabled = false;
            hpSanPham.Enabled = false;
            hpUser.Enabled = false;
            hpTinTuc.Enabled = false;
           //usser 1
           //danh muc 2
            //san pham 3
            //dat hang 4
            //tin tuc 5
            //lien he 6
            

        if (Session["role"] != null)
        {
            string[] role = Session["role"].ToString().Split('|');
            if (role.Length > 0)
            {
                for (int i = 0; i < role.Length; i++)
                {
                    if (role[i].Equals("1"))
                    {
                        hpUser.Enabled = true;
                       
                    }
                    if (role[i].Equals("2"))
                    {
                        hpDanhMuc.Enabled = true;
                        
                    }
                    if (role[i].Equals("3"))
                    {
                        hpSanPham.Enabled = true;
                       
                    }
                    if (role[i].Equals("4"))
                    {
                        Hp_DatHang.Enabled = true;
                        
                    }
                    if (role[i].Equals("5"))
                    {
                        hpTinTuc.Enabled = true;
                    }
                    if (role[i].Equals("6"))
                    {
                        hpLienHe.Enabled = true;
                    }
                    if (role[i].Equals("0"))
                    {
                        ScriptManager.RegisterStartupScript(
   this, this.GetType(), "alert",
   "alert('Bạn Không Có Quền !');location.href='Default.aspx';", true);
                        
                    }
                }
            }
        }
        switch (Request.QueryString["page"])
        {
            case "user":
                PlaceHolder1.Controls.Add(LoadControl("users.ascx"));
                break;
            case "danhmuc":
                PlaceHolder1.Controls.Add(LoadControl("DanhMuc.ascx"));
                break;
            case "sanpham":
                PlaceHolder1.Controls.Add(LoadControl("SanPham.ascx"));
                break;
            case "DatHang":
                PlaceHolder1.Controls.Add(LoadControl("DonDatHang.ascx"));
                break;
            case "lienhe":
                PlaceHolder1.Controls.Add(LoadControl("LienHe.ascx"));
                break;
            case "tintuc":
                PlaceHolder1.Controls.Add(LoadControl("TinTuc.ascx"));
                break;
            case "thongtin":
                PlaceHolder1.Controls.Add(LoadControl("gioithieu.ascx"));
                break;
            case "tongquan":
                PlaceHolder1.Controls.Add(LoadControl("tongquan.ascx"));
                break;
            
        }
    

        }
    }
}