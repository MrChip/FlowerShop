<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="cart.ascx.cs" Inherits="FlowerShop.uc.cart" %>

<style type="text/css">
    .style1
    {
        text-align: center;
    }
    .style2
    {
        width: 48px;
    }
    .style3
    {
        text-align: center;
        width: 66px;
    }
    .style5
    {
        text-align: center;
        width: 58px;
    }
    .style11
    {
        text-align: center;
        width: 92px;
    }
    </style>

<div id="wp-centercol_inner">
                     												<div id="wp-pos-breadcrumbs">
							<span class="breadcrumbs pathway clearafter">
								<a href="" class="home"></a>
							<div id="crumbs"> <span class="current">Giỏ Hàng</span></div>							</span>

						</div>
							
<div id="wp-mainbody-content">
														<div id="wp-mainbody">
								
<div class="com-content ">
	<div class="article">
								
						<div class="wp-article-content">
						

<div class="probyitem">
   <TABLE cellSpacing=1 cellPadding=0 border=0 width="700">
   <TBODY>
   <TR><TD style="HEIGHT: 63px" colSpan=3>
   <TABLE style="FONT-SIZE: 12px; WIDTH: 100%; FONT-FAMILY: tahoma;cellSpacing=0 cellPadding=0 align=center; border:1px solid #dddddd; background-color: #dddddd;" border="0" cellspacing="1" cellpadding="5" >
   <TBODY><TR><TD style="background-color: #ffffff; font-weight: 700;" class="style2">Xoá</TD>
   <TD style="background-color: #ffffff; font-weight: 700;" class="style2">Update</TD>
       <TD class="style3" style="background-color: #ffffff; font-weight: 700;">Mã&nbsp; SP</TD>
       <TD class="style11" style="background-color: #ffffff"><strong>Tên sản phẩm</strong></TD>
       <TD class="style5" style="background-color: #ffffff; font-weight: 700;">Số lượng</TD>
       <TD class="style1" style="background-color: #ffffff; font-weight: 700;">Đơn giá</TD>
       <TD class="style1" style="background-color: #ffffff; font-weight: 700;">Thành tiền</TD></TR>
<asp:Repeater ID="rptcartV" runat="server" onitemcommand="rptcartV_ItemCommand">
                                <ItemTemplate>
                                    <tr style="background-color: #ffffff">
                                    
                                        <td align="center">
                                            
                                           
                                            <asp:ImageButton  CommandName="remove" CommandArgument='<%#((DataBinder.Eval(Container.DataItem, "pro"))
                    as DataAccess.Products_info).id%>' ID="ImageButton4" runat="server" ImageUrl="~/uploads/Actions-edit-delete-icon.png" />
                                           </td>
                                           <TD style="background-color: #ffffff; font-weight: 700;" class="style2">
                                               <asp:ImageButton ID="ImageButton5" CommandName="update" CommandArgument='<%#((DataBinder.Eval(Container.DataItem, "pro"))
                    as DataAccess.Products_info).id%>' runat="server" ImageUrl="~/uploads/Actions-dialog-ok-apply-icon.png" />
                                           </TD>
                                        <td align="center">
                                          
                                            <asp:Label ID="ID" runat="server" Text='<%#((DataBinder.Eval(Container.DataItem, "pro"))
                                                                                as DataAccess.Products_info).id%>'></asp:Label>
                                        </td>
                                        <td align="center" style="width: 200px">
                                            <%#((DataBinder.Eval(Container.DataItem, "pro"))
                                                                                as DataAccess.Products_info).pname%>
                                        </td>
                                        <td align="center">
                                            <asp:TextBox ID="txtSoluong" runat=server Text='<%#DataBinder.Eval(Container.DataItem,
                    "amount")%>'
                                                Width="44px" ></asp:TextBox>
                                        </td>
                                        <td align="right">
                                            <%#string.Format("{0:0,000}", (double)((DataBinder.Eval(Container.DataItem, "pro"))
                                                                                as DataAccess.Products_info).ppricecurrent)%>
                                          
                                        </td>
                                        <td align=right>
                                          
                                            <%#string.Format("{0:0,000}", (double) DataAccess.HamXuLy.ToInt(DataBinder.Eval(Container.DataItem, "amount")) * (DataAccess.HamXuLy.ToFloat((DataBinder.Eval(Container.DataItem, "pro") as DataAccess.Products_info).ppricecurrent)))%> đ</td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater><TR><TD style="background-color: #ffffff;" colspan="5"></TD>
           <TD class="giohang" width=90 
               style="background-color: #ffffff; font-weight: 700;">Tổng tiền </TD>
           <TD class="giohang" width=90 
               style="background-color: #ffffff; font-weight: 700; text-align: right;"><%=this.tong %> đ</TD></TR></TBODY></TABLE></TD></TR>
               <TR><TD style="WIDTH: 101px; HEIGHT: 50px"></TD><TD style="WIDTH: 520px; HEIGHT: 50px" 
align=center><TABLE><TBODY><TR><TD 
vAlign=bottom align=center width=140>
                           <asp:Button ID="Button1" runat="server" CssClass="ngothe" 
                               onclick="Button1_Click" Text="Tiếp Tục Mua" />
                       </TD><TD 
vAlign=bottom align=center width=140>
                           <asp:Button ID="Button2" runat="server" CssClass="ngothe" 
                               onclick="Button2_Click" Text="Thanh Toán" />
                       </TD><TD 
vAlign=bottom align=center width=140>
                           <asp:ImageButton ID="bntBaoKim" runat="server" 
                               ImageUrl="~/uploads/btn_bk.gif" onclick="ImageButton1_Click1"/>
               </TD><TD 
vAlign=bottom align=center width=140>
                           <asp:ImageButton ID="bntNganLuong" runat="server" 
                               ImageUrl="~/uploads/btn_nl.gif" onclick="ImageButton1_Click1" />
               </TD></TR></TBODY></TABLE></TD><TD style="HEIGHT: 50px; width: 58px;"></TD></TR></TBODY></TABLE>


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