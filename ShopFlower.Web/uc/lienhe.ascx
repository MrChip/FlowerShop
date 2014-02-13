<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="lienhe.ascx.cs" Inherits="FlowerShop.uc.lienhe" %>
<style type="text/css">
    .style1
    {
        text-align: center;
        height: 80px;
    }
    .style3
    {
        text-align: left;
        width: 106px;
    }
    .style5
    {
        text-align: right;
        color: #000000;
        width: 106px;
    }
    .style7
    {
        text-align: center;
        width: 106px;
    }
</style>
<div id="wp-centercol_inner">
                     												<div id="wp-pos-breadcrumbs">
							<span class="breadcrumbs pathway clearafter">
								<a href="../Default.aspx" class="home"></a>
							<div id="crumbs"> <span class="current">Liên Hệ</span></div>							</span>

						</div>
							
<div id="wp-mainbody-content">
														<div id="wp-mainbody">
								
<div class="com-content ">
	<div class="article">
								
						<div class="wp-article-content">
						

<div class="probyitem">
 
   <table style="width: 700px; height: 63%" align="center">
                <tr>
                    <td colspan="3" class="style1">
                        <h3>
                        <strong><span class="style12">Công ty TNHH T2 21/1A Võ Trường Toản-Đà Lạt.</span>
                        <br />
                        Nếu bạn có bất kỳ một yêu cầu hay ý kiến đóng góp nào, xin hãy sử dụng mẫu dưới đây 
                        </strong>
                        </h3>
                        <p>
                            &nbsp;</p>
                        </td>
                </tr>
                <tr>
                    <td class="style7">
                    </td>
                    <td>
                        <h3 style="text-align: center">
                        <asp:Label ID="Label1" runat="server" style="text-align: center"></asp:Label>
                        </h3>
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                       Họ tên :</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="199px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                            ErrorMessage="Bạn phải nhập tên" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        Email :</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="199px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                            ErrorMessage="Bạn phải nhập email" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="TextBox2" ErrorMessage="Sai định dạng email" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                            Display="Dynamic"></asp:RegularExpressionValidator>
                        </td>
                    <td style="width: 100px; height: 21px;">
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        Điện thoại :</td>
                    <td class="style10" colspan="2">
                        <asp:TextBox ID="TextBox3" runat="server" Width="199px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
                            ErrorMessage="Bạn phải nhập số điện thoại" Width="194px" ForeColor="Red" 
                            Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Sai định dạng sdt" 
                            ValidationExpression="0\d{9,10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td valign="top" class="style5">
                        Nội dung :</td>
                    <td class="" colspan="2" valign="top">
                        <asp:TextBox ID="TextBox4" runat="server" Height="100px" TextMode="MultiLine" 
                            Width="320px" style="text-align: left"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4"
                            ErrorMessage="Hãy nhập nội dung" Width="123px" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="style3">
                    </td>
                    <td style="height: 26px">
                        <asp:Button ID="Button1" runat="server" Text="Gửi" Width="53px" OnClick="Button1_Click" /></td>
                    <td style="width: 100px; height: 26px;">
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                    </td>
                    <td>
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
            </table>
   </div>


					</div>
		<span class="article_separator">&nbsp;</span> 
<div id="jc">
	<div id="comments">
			</div>
	
	</div> </div>
</div>

							</div>
													</div>
											</div>