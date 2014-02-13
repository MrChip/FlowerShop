<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LienHe.ascx.cs" Inherits="FlowerShop.AdminControls.LienHe" %>
<%@ Register assembly="FreeTextBox" namespace="FreeTextBoxControls" tagprefix="FTB" %>
<style type="text/css">
    .style1
    {
        text-align: center;
    }
</style>
<asp:MultiView ID="MultiView1" runat="server">
    <asp:View ID="View1" runat="server">
        <table style="width:650px;" >
            <tr>
                <td style="font-weight: 700">
                    Xem Tin Nhắn
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                         
                        Width="98px" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem Value="0">Tất cả</asp:ListItem>
                        <asp:ListItem Value="1">Chưa xử lý</asp:ListItem>
                        <asp:ListItem Value="2">Đã xử lý</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td>
                  
                </td>
            </tr>
            <tr >
                <td>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
            onrowcommand="GridView1_RowCommand" PageSize="5" style="margin-top: 0px" 
            Width="746px">
            <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" >
                            <ItemStyle HorizontalAlign="Left" />
                            </asp:BoundField>
                            <asp:BoundField DataField="hoten" HeaderText="Họ Tên Người Gưởi" 
                                SortExpression="hoten" >
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Trạng Thái" SortExpression="status">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" 
                                        Text='<%#  (Boolean.Parse(Eval("TrangThai").ToString())) ? "Đã Xem" : "Chưa Xem" %>'></asp:Label>
                                </ItemTemplate>
                               
                                <ItemStyle HorizontalAlign="Center" />
                               
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Thao Tác">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" 
                                        CommandArgument='<%# Eval("id") %>' CommandName="xem">Xem</asp:LinkButton>
                                    &nbsp;||
                                    <asp:LinkButton ID="LinkButton2" runat="server" 
                                        CommandArgument='<%# Eval("id") %>' CommandName="guoimail">Gưởi Mail</asp:LinkButton>
                                    &nbsp;||
                                    <asp:LinkButton ID="LinkButton3" runat="server" 
                                        CommandArgument='<%# Eval("id") %>' CommandName="xoa" OnLoad="Delete_Load">Xóa</asp:LinkButton>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                        </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#006699" />
        </asp:GridView>
                    
                    
                    
                </td>
            </tr>
        </table>
    </asp:View>


    <asp:View ID="View2" runat="server">
        <table border="0" cellpadding="0" cellspacing="0" width="600">
            <tr>
                <td colspan="3">
                    <strong><span style="text-decoration: underline">THÔNG TIN PHẢN HỒI:
                        <br />
                        <br />
                        <asp:HiddenField ID="HiddenField1" runat="server" />
                    </span></strong>
                </td>
            </tr>
            <tr>
                <td style="width: 125px">
                </td>
                <td style="width: 5px">
                </td>
                <td style="width: 479px">
                    <strong><span style="text-decoration: underline">
                    <asp:Label ID="Label3" runat="server" 
                        style="text-align: center; color: #FF0000"></asp:Label>
                    </span></strong>
                </td>
            </tr>
            <tr>
                <td style="width: 125px">
                    Họ tên :</td>
                <td style="width: 5px">
                </td>
                <td style="width: 479px">
                    <asp:TextBox ID="txthoten" runat="server" Width="320px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 125px">
                    Email :</td>
                <td style="width: 5px">
                </td>
                <td style="width: 479px">
                    <asp:TextBox ID="txtemail" runat="server" Width="320px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 125px; height: 24px">
                    Điện thoại</td>
                <td style="width: 5px; height: 24px">
                </td>
                <td style="width: 479px; height: 24px">
                    <asp:TextBox ID="txtdienthoai" runat="server" Width="320px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 125px; height: 102px">
                    Thông tin&nbsp; :</td>
                <td style="width: 5px; height: 102px">
                </td>

                <td style="width: 479px; height: 102px">
                    <asp:TextBox ID="txtghichu" runat="server" Height="100px" TextMode="MultiLine" Width="320px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 125px">
                    Trạng thái</td>
                <td style="width: 5px">
                </td>
                <td style="width: 479px">
                    <asp:CheckBox ID="ckbDaDoc" runat="server" Text="Đã Đọc" />
                </td>
            </tr>
            <tr>
                <td style="width: 125px; height: 24px">
                </td>
                <td style="width: 5px; height: 24px">
                </td>
                <td style="width: 479px; height: 24px">
                    <asp:Button ID="bntCapNhat" runat="server" 
                        Text="Cập Nhật" CausesValidation="False" onclick="bntCapNhat_Click" />
                    &nbsp;<asp:Button ID="bntHuy" runat="server" OnClick="bntHuy_Click" Text="Hủy phản hồi"
                        Width="107px" CausesValidation="False" />
                    <asp:Button ID="bntQuayLai" runat="server" OnClick="bntQuayLai_Click" 
                        Text="Quay Lại" CausesValidation="False" /></td>
            </tr>
        </table>
    </asp:View>



    <asp:View ID="View3" runat="server">
        <table id="Table4" border="0" cellpadding="0" style="border-collapse: collapse" width="100%">
            <tr>
                <td style="height: 19px; width: 73px;">
                </td>
                <td style="height: 19px" width="15">
                </td>
                <td style="height: 19px; font-weight: 700; color: #FF0000;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 73px; height: 19px;" class="style1">
                    &nbsp;</td>
                <td width="15" style="height: 19px" class="style1">
                    &nbsp;</td>
                <td style="height: 19px" class="style1">
                    <strong>TRẢ LỜI Ý KIẾN CỦA KHÁCH HÀNG</strong></td>
            </tr>
            <tr>
                <td style="width: 73px">
                    Tiêu đề
                </td>
                <td width="15">
                    &nbsp;
                </td>
                <td>
                    <asp:TextBox ID="txttitle" runat="server" CssClass="txt" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 73px;">
                    Email đến
                </td>
                <td width="15">
                </td>
                <td>
                    <asp:TextBox ID="txtTo" runat="server" CssClass="txt" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 73px; height: 19px" valign="top">
                    Nội dung
                </td>
                <td style="height: 19px" width="15">
                    &nbsp;
                </td>
                <td style="height: 19px">
                  
                    <FTB:FreeTextBox ID="FreeTextBox1" runat="server">
                    </FTB:FreeTextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 24px; width: 73px;">
                </td>
                <td style="height: 24px">
                </td>
                <td style="height: 24px">
                </td>
            </tr>
            <tr>
                <td style="height: 24px; width: 73px;">
                    &nbsp;
                </td>
                <td style="height: 24px">
                    &nbsp;
                </td>
                <td style="height: 24px">
                    <asp:Button ID="bntGuoiMail" runat="server" Text="Gửi mail" 
                        onclick="bntGuoiMail_Click" />
                    
                    &nbsp;<asp:Button ID="btncancel" runat="server" CausesValidation="False" 
                        CssClass="btn" Height="25px"  Text="Hủy bỏ" 
                        Width="66px" onclick="bntQuayLai_Click" />
                </td>
            </tr>
        </table>
    </asp:View>
</asp:MultiView>