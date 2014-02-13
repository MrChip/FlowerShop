<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="tongquan.ascx.cs" Inherits="FlowerShop.AdminControls.tongquan" %>


<style type="text/css">
    .style1
    {
        text-align: center;
    }
    .style2
    {
        width: 84px;
    }
    .style3
    {
        width: 59px;
    }
    .style4
    {
        color: #FF0000;
    }
</style>


<table align="left" width="100%">
    <tr>
        <td class="style1" colspan="2">
            <h2>
            <strong>Logo:</h2>
            <br />
            <br />
            </strong></td>
    </tr>
    <tr>
        <td class="style1" colspan="2">
            <span class="style4">Hình Logo kích thước là: 500 X 100 px (Vui lòng cẩn thận 
            trước khi cập nhật)</span><br />
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td>
            <asp:Image ID="Image2" runat="server" Height="49px" 
                ImageUrl="~/App_Themes/themes/FlowerShop/images/logo.png" Width="136px" />
            <asp:FileUpload ID="FileUpload_Banner" runat="server" />
        &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="bntBanner" runat="server" onclick="bntBanner_Click" 
                Text="Cập Nhật" CssClass="form_submit" />
        </td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2" colspan="2">
            <hr style="width: 770px" />
        </td>
    </tr>
    <tr>
        <td class="style1" colspan="2">
            <h2>
            <strong>Hình Slideshow 
            </h2>
            <br />
            <br />
            </strong> 
            </td>
    </tr>
    <tr>
        <td class="style1" colspan="2">
            <span class="style4">Hình slide kích thước là: 965 X 300 px (Vui lòng cẩn thận 
            trước khi cập nhật)</span><br />
            <br />
            <br />
            </td>
    </tr>
    <tr>
        <td class="style3">
            Hình 1:</td>
        <td>
            <asp:Image ID="Image1" runat="server" Height="53px" 
                ImageUrl="~/uploads/slider/1.jpg" Width="141px" />
            <asp:FileUpload ID="FileUpload1" runat="server" />
        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Cập Nhật" CssClass="form_submit" 
                onclick="Button1_Click" />
        </td>
    </tr>
    <tr>
        <td class="style3">
            Hình 2:</td>
        <td>
            <asp:Image ID="Image3" runat="server" Height="53px" 
                ImageUrl="~/uploads/slider/2.jpg" Width="141px" />
            <asp:FileUpload ID="FileUpload2" runat="server" />
        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Cập Nhật" CssClass="form_submit" 
                onclick="Button2_Click" />
        </td>
    </tr>
    <tr>
        <td class="style3">
            Hình 3:</td>
        <td>
            <asp:Image ID="Image4" runat="server" Height="53px" 
                ImageUrl="~/uploads/slider/3.jpg" Width="141px" />
            <asp:FileUpload ID="FileUpload3" runat="server" />
        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="Cập Nhật" CssClass="form_submit" 
                onclick="Button3_Click" />
        </td>
    </tr>
    <tr>
        <td class="style3">
            Hình 4:</td>
        <td>
            <asp:Image ID="Image5" runat="server" Height="53px" 
                ImageUrl="~/uploads/slider/4.jpg" Width="141px" />
            <asp:FileUpload ID="FileUpload4" runat="server" />
        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" Text="Cập Nhật" CssClass="form_submit" 
                onclick="Button4_Click" />
        </td>
    </tr>
    <tr>
        <td class="style3">
            Hình 5:</td>
        <td>
            <asp:Image ID="Image6" runat="server" Height="53px" 
                ImageUrl="~/uploads/slider/5.jpg" Width="141px" />
            <asp:FileUpload ID="FileUpload5" runat="server" />
        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button5" runat="server" Text="Cập Nhật" CssClass="form_submit" 
                onclick="Button5_Click" />
        </td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>

