<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="doimatkhau.ascx.cs" Inherits="FlowerShop.uc.doimatkhau" %>
<style type="text/css">
    .style1
    {
        width: 512px;
        height: 158px;
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
        text-align: left;
        }
    .style9
    {
        height: 61px;
    }
    .style10
    {
        text-align: left;
        width: 133px;
    }
</style>

<div id="wp-centercol_inner">
                     												<div id="wp-pos-breadcrumbs">
							<span class="breadcrumbs pathway clearafter">
								<a href="Default.aspx" class="home"></a>
							<div id="crumbs"> 
                                <span>Login</span></div>							</span>

						</div>
							
<div id="wp-mainbody-content">
														<div id="wp-mainbody">
								
<div class="com-content ">
	<div class="article">
								
						<div class="wp-article-content">
						
                        
					        <table align="center" class="style1">
                                <tr>
                                    <td class="style8" colspan="2">
                                        <h3>
                                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                            </h3>
                                    </td>
                                    <td class="style7">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style10">
                                        Password 
                                        Củ</td>
                                    <td class="style7">
                                        <asp:TextBox ID="txtpasscu" runat="server" style="text-align: left" 
                                            Width="225px" TextMode="Password"></asp:TextBox>
                                    </td>
                                    <td class="style7">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                            ControlToValidate="txtpasscu" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style10">
                                        Password</td>
                                    <td class="style7">
                                        <asp:TextBox ID="txtpass" runat="server" style="text-align: left" Width="225px" 
                                            TextMode="Password"></asp:TextBox>
                                    </td>
                                    <td class="style7">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                            ControlToValidate="txtpass2" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style10">
                                        Nhập Lại Pass</td>
                                    <td class="style7">
                                        <asp:TextBox ID="txtpass2" runat="server" style="text-align: left" 
                                            Width="223px" TextMode="Password"></asp:TextBox>
                                    </td>
                                    <td class="style7">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                            ControlToValidate="txtpass2" Display="Dynamic" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                            ErrorMessage="Pass Không Trùng" ControlToCompare="txtpass" 
                                            ControlToValidate="txtpass2"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style6" colspan="3">
                                        <asp:Button ID="Button1" runat="server" CssClass="ngothe" 
                                            onclick="Button1_Click" Text="Đổi Pass" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="style9">
                                       
                                        <br />
                                        <br />
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