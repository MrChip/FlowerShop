<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Login.ascx.cs" Inherits="FlowerShop.uc.Login" %>
<style type="text/css">
    .style1
    {
        height: 58px;
        font-weight: bold;
    }
    .style2
    {
        width: 223px;
    }
    .style3
    {
        height: 35px;
        width: 76px;
    }
    .ngothe
    {
        height: 26px;
    }
    .style4
    {
        text-align: center;
    }
</style>
<div id="wp-centercol_inner">
    <div id="wp-pos-breadcrumbs">
        <span class="breadcrumbs pathway clearafter"><a href="Default.aspx" class="home"></a>
            <div id="crumbs">
                <span>Login</span></div>
        </span>
    </div>
    <div id="wp-mainbody-content">
        <div id="wp-mainbody">
            <div class="com-content ">
                <div class="article">
                    <div class="wp-article-content">
                        <div class="probyitem">
                            <table align="center" cellpadding="0" cellspacing="0" style="border: 1px solid #ccc;
                                height: 191px; width: 300px;">
                                <tr>
                                    <td align="center" colspan="2" class="style1" style="background-image: url('img/icon/loading_bg.png');
                                        background-repeat: no-repeat">
                                        <h3>ĐĂNG NHẬP HỆ THỐNG</h3>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" colspan="2">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="style3" >
                                        Username:
                                    </td>
                                    <td class="style2" align="center">
                                        <asp:TextBox ID="TextBox1" runat="server" Width="150px" TabIndex="1"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                            ControlToValidate="TextBox1" ErrorMessage="(*)" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" colspan="2">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="style3">
                                        Password :
                                    </td>
                                    <td class="style2" align="center">
                                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="150px" TabIndex="2"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                            ControlToValidate="TextBox2" ErrorMessage="(*)" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2">
                                        <asp:Button ID="Button1" runat="server" Text="Đăng Nhập" CssClass="ngothe" 
                                            OnClick="Button1_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="height: 21px">
                                        <asp:Label ID="Labelerr" runat="server" ForeColor="Red" Width="100%"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <span class="article_separator">&nbsp;</span>
                    <div id="jc">
                        <div id="comments" class="style4">
                            <a href="Default.aspx?page=quenmatkhau">Quên mật khẩu </a>&nbsp;|| <a href="Default.aspx?page=register">
                                &nbsp;Đăng Ký</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
