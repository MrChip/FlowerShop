<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="thongtinuser.ascx.cs"
    Inherits="FlowerShop.uc.ThongTinUser" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<style type="text/css">
    .style1
    {
        width: 80%;
    }
    .style2
    {
    }
    .style3
    {
    }
    .style4
    {
        width: 148px;
    }
    .style5
    {
        width: 148px;
        height: 23px;
    }
    .style6
    {
        height: 23px;
    }
    .style7
    {
        height: 30px;
    }
</style>
<div id="wp-centercol_inner">
    <div id="wp-pos-breadcrumbs">
        <span class="breadcrumbs pathway clearafter"><a href="Default.aspx" class="home"></a>
            <div id="crumbs">
                <span>Thông Tin Người Dùng</span></div>
        </span>
    </div>
    <div id="wp-mainbody-content">
        <div id="wp-mainbody">
            <div class="com-content ">


                <table align="center" class="style1">
                    <tr>
                        <td class="style2" colspan="2">
                            <h3>
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </h3>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            user name</td>
                        <td>
                            <asp:TextBox ID="txtuser" runat="server" Width="299px" ReadOnly="True" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="txtuser" ErrorMessage="(*)" Display="Dynamic"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            Email</td>
                        <td>
                            <asp:TextBox ID="txtemail" runat="server" Width="299px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtemail" ErrorMessage="(*)" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="txtemail" ErrorMessage="Sai định dạng" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            Họ Và Tên</td>
                        <td>
                            <asp:TextBox ID="txthoten" runat="server" Width="299px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txthoten" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            Địa Chỉ</td>
                        <td>
                            <asp:TextBox ID="txtdiachi" runat="server" Width="299px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="txtdiachi" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            Ngày Sinh</td>
                        <td>
                            <asp:TextBox ID="txtngaysinh" runat="server" Width="299px"></asp:TextBox>
                            <asp:CalendarExtender ID="txtngaysinh_CalendarExtender" runat="server" 
                                Format="dd/MM/yyyy" TargetControlID="txtngaysinh">
                            </asp:CalendarExtender>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="txtngaysinh" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5">
                            Số Điện Thoai</td>
                        <td class="style6">
                            <asp:TextBox ID="txtsdt" runat="server" Width="299px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="txtsdt" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="txtsdt" ErrorMessage="Sai định dạng" 
                                ValidationExpression="0\d{9,10}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr style="text-align: center">
                        <td class="style3" colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr style="text-align: center">
                        <td class="style7" colspan="2">
                            
                            <asp:Button ID="bntCapNhat" runat="server" CssClass="ngothe" 
                                Text="Cập Nhật" onclick="bntCapNhat_Click" />
                                <asp:Button ID="bntDoiMatKhau" runat="server" CssClass="ngothe" 
                                Text="Đổi Mật Khẩu" onclick="bntDoiMatKhau_Click" />
                        </td>
                    </tr>
                </table>


            </div>
        </div>
    </div>
</div>
<asp:ScriptManager ID="ScriptManager1" runat="server" 
    EnableScriptGlobalization="True">
</asp:ScriptManager>

