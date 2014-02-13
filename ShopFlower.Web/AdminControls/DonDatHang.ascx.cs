using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccess;
using System.Data;
namespace FlowerShop.AdminControls
{
    public partial class DonDatHang : System.Web.UI.UserControl
    {
        HiddenField hd; int id; string a;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
              
                LoadData();
            }
        }

        private void LoadData()
        {
            MultiView1.ActiveViewIndex = 0;
            this.Literal1.Visible = false;
            GridView1.DataSource = Orders_Info.GetAll();
            GridView1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }



        protected void Delete_Load(object sender, EventArgs e)
        {
            ((LinkButton)sender).Attributes["onclick"] = "return confirm('Bạn có muốn xóa đơn hàng này không?')";
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin.aspx?page=DatHang");
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex == 0)
            {
                LoadData();
            }
            if (DropDownList1.SelectedIndex == 1)
            {
                MultiView1.ActiveViewIndex = 0;
                this.Literal1.Visible = false;
                GridView1.DataSource = Orders_Info.GetXuLy(false);
                GridView1.DataBind();
            }
            else
            {
                MultiView1.ActiveViewIndex = 0;
                this.Literal1.Visible = false;
                GridView1.DataSource = Orders_Info.GetXuLy(true);
                GridView1.DataBind();
            }
        }

        //xu ly 3 nut trong gridview
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string name = e.CommandName;
            int id = Convert.ToInt32(e.CommandArgument.ToString());
            Orders_Info order = Orders_Info.getbyid(id.ToString());
            //dt = hoadon.getcartdetail_byid(Convert.ToInt32(id));
            switch (name)
            {
                case "xoa":
                    Orders_Info.Delete(id);
                    Response.Redirect("admin.aspx?page=DatHang");
                    break;
                case "Xem":

                    txthoten.Text = order.TenKhachHang;
                    txtdiachi.Text = order.DiaChi;
                    txtdienthoai.Text = order.Phone;
                    txtemail.Text = order.Email;
                    txtghichu.Text = order.GhiChu;
                    ckbStatus.Checked = order.status;
                    lblTongTien.Text = String.Format("{0:0,0}", order.TongTien);

                    HiddenField1.Value = order.id.ToString();
                    GridView_DanhSachSanPham.DataSource = OrderDetails_Info.Get_ByMaHDNhap(id);
                    GridView_DanhSachSanPham.DataBind();
                    MultiView1.ActiveViewIndex = 1;


                    break;
                case "guoimail":

                    txtTo.Text = order.Email;
                    txttitle.Text = "Phản hồi thông tin đơn  hàng";
                    string content = "Xin chào bạn: " + order.TenKhachHang + "<br>";
                    content += "T2-Shop Đã nhận được đơn hàng của bạn. Vui lòng Chuyển " + order.TongTien.ToString();


                    content += " vnđ . Vào tài khoản sau: <br>";
                    content += "-Số Tài khoản:0021002174719<br>";
                    content += "-Chủ Thẻ:Ngô Xuân Thế<br>";
                    content += "-Ngân Hàng:Agribank<br>";
                    content += "-Số Tài khoản:0021002174719<br>";
                    content += "Chúng Tôi sẻ chuyển hàng ngay khi nhận được tiền<br>Mọi thắc mắc xin liên hệ theo số điện thoại :098732123 (mr.Tú)";
                    FreeTextBox1.Text = content;
                    MultiView1.ActiveViewIndex = 2;

                    break;
            }

        }
        //cập nhật đơn hàng
        protected void bntCapNhat_Click(object sender, EventArgs e)
        {

            Orders_Info order = Orders_Info.getbyid(HiddenField1.Value);
            order.status = ckbStatus.Checked;
            if (Orders_Info.Update_TrangThai(order))
            {
                lblThongBao.Text = "Cập Nhật Thành Công";
            }
        }
        //hủy đơn hàng
        protected void bntHuyDonHang_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(HiddenField1.Value.ToString());
            Orders_Info.Delete(id);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert",
     "alert('Xóa đơn hàng thành công');location.href='admin.aspx?page=DatHang';", true);

        }
        //nút quay lại
        protected void bntQuayLai_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin.aspx?page=DatHang");
        }
        //nút gưởi mail
        protected void bntGuoiMail_Click(object sender, EventArgs e)
        {
            if (HamXuLy.SendMail(txtTo.Text, txttitle.Text, FreeTextBox1.Text))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Email đã được gửi đến khách hàng');location.href='admin.aspx?page=DatHang';", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(
               this, this.GetType(), "alert",
               "alert('Gửi Mail không thành công,vui lòng kiểm tra lại');location.href='admin.aspx?page=DatHang';", true);
            }

        }
    }
}