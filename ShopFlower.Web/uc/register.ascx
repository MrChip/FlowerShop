<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="register.ascx.cs" Inherits="FlowerShop.uc.reg" %>



<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>



<style type="text/css">
    .style1
    {
        width: 343px;
    }
    .style2
    {
        text-align: center;
        height: 34px;
    }
</style>

<div id="wp-centercol_inner">
                     												<div id="wp-pos-breadcrumbs">
							<span class="breadcrumbs pathway clearafter">
								<a href="../Default.aspx" class="home"></a>
							<div id="crumbs"> <span class="current">Đăng Ký Thành Viên</span></div>							</span>

						</div>
							
<div id="wp-mainbody-content">
														<div id="wp-mainbody">
								
<div class="com-content ">
	<div class="article">
								
				<div class="wp-article-content"></div>
		&nbsp;<table width="80%" border="0" align="center" 
                    style="border-style: solid; border-width: 1px">
          <tr>
            <td colspan="3"><h3 align="center">Đăng Ký Thành Viên </h3></td>
            </tr>
          <tr>
            <td class="style1">Tên đăng nhập(*)</td>
            <td width="221">
                <asp:TextBox ID="txtuser" runat="server" Width="310px"></asp:TextBox>
              </td>
            <td width="330">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtuser" Display="Dynamic" ErrorMessage="(*)"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
            <td class="style1">Email (*)</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Width="310px"></asp:TextBox>
              </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Sai Định Dạng Email" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
              </td>
          </tr>
          <tr>
            <td class="style1">Mật khẩu(*)</td>
            <td>
                <asp:TextBox ID="txtpass" runat="server" Width="310px" TextMode=Password></asp:TextBox>
              </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtpass" Display="Dynamic" ErrorMessage="(*)"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
            <td class="style1">Xác nhận mật khẩu(*):</td>
            <td>
                <asp:TextBox ID="txtpass2" runat="server" Width="310px" TextMode="Password"></asp:TextBox>
              </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtpass2" Display="Dynamic" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtpass2" ControlToValidate="txtpass" 
                    ErrorMessage="Sai mật khẩu"></asp:CompareValidator>
              </td>
          </tr>
          <tr>
            <td class="style1">Họ tên(*):</td>
            <td>
                <asp:TextBox ID="txthoten" runat="server" Width="310px"></asp:TextBox>
              </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txthoten" Display="Dynamic" ErrorMessage="(*)"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
            <td class="style1">Ngày Sinh</td>
            <td>
                <asp:TextBox ID="txtngaysinh" runat="server" Width="310px"></asp:TextBox>
                <asp:CalendarExtender ID="txtngaysinh_CalendarExtender" runat="server" 
                     TargetControlID="txtngaysinh" 
                    Format="dd/MM/yyyy">
                </asp:CalendarExtender>
              </td>
            <td>
                &nbsp;</td>
          </tr>
          <tr>
            <td class="style1">Địa chỉ</td>
            <td>
                <asp:TextBox ID="txtdiachi" runat="server" Width="310px"></asp:TextBox>
              </td>
            <td>
                &nbsp;</td>
          </tr>
          <tr>
            <td class="style1">Số Điện Thoại(*)</td>
            <td>
                <asp:TextBox ID="txtsdt" runat="server" Width="310px"></asp:TextBox>
              </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtsdt" Display="Dynamic" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtsdt" ErrorMessage="Sai định dạng" 
                    ValidationExpression="0\d{9,10}"></asp:RegularExpressionValidator>
              </td>
          </tr>
          <tr>
            <td colspan="3">
                <h3>
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                </h3>
              </td>
            </tr>
          <tr>
            <td colspan="3" class="style2">
                <asp:Button ID="bntdangky" runat="server" Text="Đăng Ký" CssClass="ngothe" 
                    onclick="bntdangky_Click" />
&nbsp;
              </td>
            </tr>
        </table>
        <p>
            <asp:ScriptManager ID="ScriptManager1" runat="server" 
                EnableScriptGlobalization="True">
            </asp:ScriptManager>
                </p>
       </div>
</div>

							</div>
													</div>
											</div>