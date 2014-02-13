<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="checkout.ascx.cs" Inherits="FlowerShop.uc.checkout" %>
<style type="text/css">
    .style1
    {
        text-align: center;
    }
    .style2
    {
        width: 145px;
    }
</style>
<div id="wp-centercol_inner">
                     												<div id="wp-pos-breadcrumbs">
							<span class="breadcrumbs pathway clearafter">
								<a href="../Default.aspx" class="home"></a>
							<div id="crumbs"> <span class="current">Đặt Hàng</span></div>							</span>

						</div>
							
<div id="wp-mainbody-content">
														<div id="wp-mainbody">
								
<div class="com-content ">
	<div class="article">
								
						<div class="wp-article-content">
						

<div class="probyitem">
 
 <table  border="0" cellpadding="5" cellspacing="1" width="730" style="border-right: #dddddd 1px solid; border-top: #dddddd 1px solid; font-size: 12px; border-left: #dddddd 1px solid; width: 100%; border-bottom: #dddddd 1px solid; font-family: tahoma; background-color: #dddddd; cellspacing: 0 cellPadding=0 align=center">
                <tr>                    
                    <td align="center" class="giohang" 
                        style="background-color: #ffffff; font-weight: 700;">
                        Mã SP</td>
                    <td align="center" class="giohang" 
                        style="background-color: #ffffff; font-weight: 700;">
                        Tên SP</td>
                    <td align="center" class="style2" 
                        style="background-color: #ffffff; font-weight: 700;">
                        Số lượng</td>
                    <td align="center"
                        width="90" class="giohang" 
                        style="background-color: #ffffff; font-weight: 700;">
                        Đơn giá</td>
                    <td align="center"
                        width="90" class="giohang" 
                        style="background-color: #ffffff; font-weight: 700;">
                        Thành tiền</td>
                </tr>
                <asp:Repeater ID="mylist" runat="server">
                    <ItemTemplate>
                        <tr style="background-color: #ffffff">                            
                            <td align="center">
                                
                                <asp:Label ID="MAMH" runat="server" Text='<%#((DataBinder.Eval(Container.DataItem, "pro"))
                                                                                as DataAccess.Products_info).id%>'></asp:Label>
                            </td>
                            <td align="center" style="width: 200px">
                                <%#((DataBinder.Eval(Container.DataItem, "pro"))
                                                                                as DataAccess.Products_info).pname%>
                            </td>
                            <td align="center">
                                <asp:Label ID="Soluong" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,
                    "amount")%>'
                                    Width="24px"></asp:Label>
                            </td>
                            <td align="center">
                               <%#string.Format("{0:0,000}", (double)((DataBinder.Eval(Container.DataItem, "pro"))
                                                                                as DataAccess.Products_info).ppricecurrent)%>
                            </td>
                            <td align="center">
                                 <%#string.Format("{0:0,000}", (double) DataAccess.HamXuLy.ToInt(DataBinder.Eval(Container.DataItem, "amount")) * (DataAccess.HamXuLy.ToFloat((DataBinder.Eval(Container.DataItem, "pro") as DataAccess.Products_info).ppricecurrent)))%>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
                <tr>
                    <td style="background-color: #ffffff;">
                    </td>
                    <td style="background-color: #ffffff;">
                    </td>
                    <td style="background-color: #ffffff;" class="style2">
                    </td>
                    <td class="giohang" style="background-color: #ffffff; font-weight: 700;">
                        Tổng tiền
                    </td>
                    <td width="90" class="giohang" 
                        style="background-color: #ffffff; font-weight: 700;">
                        <%=this.tong %></td>
                </tr>
            </table>


<table cellpadding="0" cellspacing="0" border="0" width="100%" align="center">
        <tr>
            <td style="height: 7px">
                            </td>
        </tr>
        <tr>
            <td style="height: 21px">
               </td>
        </tr>
        <tr style="color: #000">
            <td align="left" style="height: 21px;" class="giohangstep">
                        <h3 class="style1">
                            <strong>Nếu bạn đã chọn hàng xong hãy theo các bước dưới đặt hàng :</strong></h3>
                        <p class="style1">
                            &nbsp;</p>
            </td>
        </tr>
        <tr style="color: #000">
            <td style="height: 21px">
                <table border="0" cellpadding="0" cellspacing="3" >
                    <tr>
                        <td style="width: 139px" >
                            <asp:Label ID="Label3" runat="server" CssClass="labelCart" Text="Họ và tên (*)"></asp:Label></td>
                        <td >
                            <asp:TextBox ID="txtnguoidh" runat="server" Width="220px" CssClass="inputbox" 
                                ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtnguoidh"
                                ErrorMessage="Bạn phải nhập tên"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr >
                        <td valign="top" style="width: 139px" >
                            <asp:Label ID="Label1" runat="server" Text="Địa chỉ (*):"></asp:Label></td>
                        <td >
                            <asp:TextBox ID="txtdcndh" runat="server" Width="221px" Rows="5" 
                                CssClass="inputbox"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtdcndh"
                                ErrorMessage="Bạn phải nhập địa chỉ" ></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 139px">
                            <asp:Label ID="Label6" runat="server" CssClass="labelCart" Text="E-mail "></asp:Label><span
                                style="color: #000">(*):</td>
                        <td >
                            <asp:TextBox ID="txtEmailndh" runat="server" Width="221px" CssClass="inputbox"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="Evmail" runat="server" ControlToValidate="txtEmailndh"
                                ErrorMessage="Email sai kiểu" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                Width="112px"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 139px"  >
                            <asp:Label ID="Label7" runat="server" CssClass="labelCart" Text="Điện thoại "></asp:Label><span
                                style="color: #000">(*):</td>
                        <td >
                            <asp:TextBox ID="txtdtndh" runat="server" class="inputs" 
                                onkeypress="if (event.keyCode < 45 || event.keyCode > 57) event.returnValue = false;" 
                                Width="221px" CssClass="inputbox"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td valign="top" style="width: 139px">
                            <asp:Label ID="Label10" runat="server" CssClass="labelCart" Text="Ghi chú : "></asp:Label></td>
                        <td >
                            <asp:TextBox ID="txtghichundh" runat="server" Columns="30" Rows="5" TextMode="multiline" Width="222px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="height: 10px; width: 139px;">
                        </td>
                        <td style="height: 10px">
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 24px; width: 139px;">
                        </td>
                        <td style="height: 24px">
                            <asp:Button ID="Button1" runat="server" Text="Gưởi Đơn Hàng" CssClass="ngothe" 
                                onclick="Button1_Click" />
                            <asp:Button ID="Button2" runat="server" Text="Hủy Đơn Hàng" CssClass="ngothe" 
                                onclick="Button2_Click" />
                        </td>
                    </tr>
                </table>
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