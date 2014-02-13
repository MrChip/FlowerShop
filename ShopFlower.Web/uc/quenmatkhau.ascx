<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="quenmatkhau.ascx.cs" Inherits="FlowerShop.uc.quenmatkhau" %>



<style type="text/css">
    .style1
    {
        width: 436px;
        height: 128px;
    }
    .style6
    {
        text-align: center;
    }
    .style7
    {
        width: 199px;
    }
    .style8
    {
        text-align: center;
        width: 111px;
    }
</style>

<div id="wp-centercol_inner">
                     												<div id="wp-pos-breadcrumbs">
							<span class="breadcrumbs pathway clearafter">
								<a href="Default.aspx" class="home"></a>
							<div id="crumbs"> 
                                <span>Lấy Lại Mật Khẩu</span></div>							</span>

						</div>
							
<div id="wp-mainbody-content">
														<div id="wp-mainbody">
								
<div class="com-content ">
	<div class="article">
								
						<div class="wp-article-content">
						

					        <table align="center" class="style1">
                                <tr>
                                    <td class="style8">
                                        Email</td>
                                    <td class="style7">
                                        <asp:TextBox ID="txtemail" runat="server" style="text-align: left" 
                                            Width="223px"></asp:TextBox>
                                    </td>
                                    <td class="style7">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                            ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                            ControlToValidate="txtemail" ErrorMessage="Nhập lại email" 
                                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style6" colspan="3">
                                        <asp:Button ID="Button1" runat="server" CssClass="ngothe" 
                                            onclick="Button1_Click" Text="Gưởi mật khẩu" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Label ID="Label1" runat="server" ForeColor="Red" 
                                            Text="Không có tài khoản nào phù hợp với email bạn nhập" Visible="False"></asp:Label>
                                        <br />
                                        <asp:Label ID="Label3" runat="server" ForeColor="Red" 
                                            Text="Mật khẩu đã được gửi vào email của bạn vui lòng kiểm tra hộp thư !" 
                                            Visible="False"></asp:Label>
                                        <br />
                                        <asp:HyperLink ID="HyperLink1" runat="server" 
                                            NavigateUrl="Default.aspx?page=login" Visible="False">Vào đây để đăng nhập</asp:HyperLink>
                                        <br />
                                    </td>
                                </tr>
                            </table>
						

					</div>
		<span class="article_separator">&nbsp;</span> 
 </div>
</div>

							</div>
													</div>
											</div>