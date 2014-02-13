<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="index.ascx.cs" Inherits="FlowerShop.AdminControls.index" %>
<style type="text/css">
    .style1
    {
        width: 91px;
    }
    .style2
    {
        width: 81px;
    }
    .style3
    {
        width: 68px;
    }
</style>
<table border="0" align="center" style="height: 115px; width: 593px">
  <tr>
  <td align="center" valign="middle">
        <asp:HyperLink ID="hpTongQuan" runat="server" 
            ImageUrl="~/uploads/admin/store-icon.png" 
            NavigateUrl="~/admin.aspx?page=tongquan">Tổng Quan</asp:HyperLink>
      </td>
    <td align="center" valign="middle">
        <asp:HyperLink ID="hpUser" runat="server" 
            ImageUrl="~/uploads/admin/users-icon.png" 
            NavigateUrl="~/admin.aspx?page=user">người dùng</asp:HyperLink>
      </td>
    <td align="center">
        <asp:HyperLink ID="hpDanhMuc" runat="server" 
            ImageUrl="~/uploads/admin/shopping-bags-icon.png" 
            NavigateUrl="~/admin.aspx?page=danhmuc">danh mục</asp:HyperLink>
      </td>
    <td align="center" class="style1">
        <asp:HyperLink ID="hpSanPham" runat="server" 
            ImageUrl="~/uploads/admin/shopping-icon.png" 
            NavigateUrl="~/admin.aspx?page=sanpham">sản phẩm</asp:HyperLink>
      </td>
      <td align="center" class="style2">
        <asp:HyperLink ID="Hp_DatHang" runat="server" 
            ImageUrl="~/uploads/admin/shopping-iicon.png" 
            NavigateUrl="~/admin.aspx?page=DatHang">Đơn đặt hàng</asp:HyperLink>
      </td>
    <td align="center">
        <asp:HyperLink ID="hpTinTuc" runat="server" 
            ImageUrl="~/uploads/admin/Network-Earth-icon.png" 
            NavigateUrl="~/admin.aspx?page=tintuc">Tin Tức</asp:HyperLink>
      </td>
    <td align="center" class="style3">
        <asp:HyperLink ID="hpLienHe" runat="server" 
            ImageUrl="~/uploads/admin/talking-icon.png" 
            NavigateUrl="~/admin.aspx?page=lienhe">liên hệ</asp:HyperLink>
      </td>
  </tr>
  <tr>
  <td align="center" valign="top">Tổng Quan</td>
    <td align="center" valign="top">Users</td>
    <td align="center" valign="top">Danh mục  </td>
    <td align="center" valign="top" class="style1">Sản phẩm </td>
    <td align="center" valign="top" class="style2">Đơn Đặt Hàng</td>
    <td align="center" valign="top">Tin Tức </td>
    <td align="center" valign="top" class="style3">Liên Hệ </td>
  </tr>
</table>
<hr/>
<%--<div class="toogle_wrap">
            <div class="trigger active"><a href="#">Tổng Quan Về Trang Quản Trị</a></div>

            <div class="toggle_container" style="display: block;">
			<p>
      demo
			</p>
            </div>
        </div>--%>
<table align=center>
                        <tr>
                            <td>
                                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                            </td>
                        </tr>
                    </table>
