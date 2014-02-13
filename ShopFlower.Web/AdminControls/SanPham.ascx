<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SanPham.ascx.cs" Inherits="FlowerShop.AdminControls.SanPham" %>

<%@ Register assembly="FreeTextBox" namespace="FreeTextBoxControls" tagprefix="FTB" %>
                    <table border="0" cellpadding="0" cellspacing="0" 
    style="padding: 10px; border-style: solid; border-width: 1px; height: 40px" 
    width="100%">
                        <tr>
                            <td rowspan="3" style="width: 20px">
                            </td>
                            <td colspan="1">
                            </td>
                            <td colspan="2">
                            </td>
                            <td align="center" colspan="1" rowspan="3">
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                <asp:Label ID="Label3" runat="server" Text="Tìm sản phẩm"></asp:Label></td>
                            <td style="width: 100px">
                                <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="250px"></asp:TextBox></td>
                            <td style="padding-left: 10px">
                                <asp:ImageButton ID="btnTimKiem" runat="server" CausesValidation="False" 
                                    ImageUrl="~/uploads/search-bt.png" onclick="btnTimKiem_Click"
                                     /></td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                &nbsp;</td>
                            <td style="text-align: center; font-weight: 700; color: #FF0000;" colspan="2">
                                <h3>
                                    <asp:Label ID="Label5" runat="server" style="text-align: center"></asp:Label>
                                </h3>
                            </td>
                        </tr>
                    </table>
                    <br />
<asp:MultiView ID="MultiView1" runat="server">
    <asp:View ID="View1" runat="server">

    <asp:Image ID="Image1" runat="server" ImageUrl="~/uploads/admin/add-user-icon.png" />
                    <asp:LinkButton
                        ID="lbtThemMoi" runat="server" onclick="lbtThemMoi_Click" >Thêm Mới</asp:LinkButton><asp:Label
                            ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                            <br />
                            <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
            GridLines="None" onpageindexchanging="GridView1_PageIndexChanging" 
            onrowcommand="GridView1_RowCommand" PageSize="5" style="margin-top: 0px" 
            Width="746px" onselectedindexchanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id">
                <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="pname" HeaderText="Tên Sản Phẩm" 
                    SortExpression="pname">
                <ControlStyle BorderWidth="200px" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Hình Ảnh">
                    <ItemTemplate>
                        <img alt="" src='uploads/products/<%# Eval("pimage") %>' style="height: 100px; width: 96px;" />
                    </ItemTemplate>
                    <ControlStyle Width="100px" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:BoundField DataField="pngaydang" HeaderText="Ngày Đăng" 
                    SortExpression="pngaydang" DataFormatString="{0:MM/dd/yy}">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Tình Trạng" SortExpression="active">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" 
                            Text='<%# (Boolean.Parse(Eval("Active").ToString())) ? "Hiển Thị" : "Không Hiển thị" %>' CommandArgument='<%# Eval("id") %>' CommandName="kichhoat"></asp:LinkButton>
                    </ItemTemplate>
                    
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Thao Tác">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton2" runat="server" AlternateText="Sửa" 
                            CommandArgument='<%# Eval("id") %>' CommandName="sua" 
                            ImageUrl="~/uploads/admin/edit.jpeg" />
                        /
                        <asp:ImageButton ID="ImageButton1" runat="server" AlternateText="Xóa" 
                            CommandArgument='<%# Eval("id") %>' CommandName="del" 
                            ImageUrl="~/uploads/admin/remove.jpg" OnLoad="Delete_Load" />
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
           
            </asp:View>
            <asp:View ID="View2" runat="server"><table id="table2" border="0" cellpadding="0" style="border-collapse: collapse" width="100%" cellspacing="0">
        <tr>
            <td colspan="3">
                &nbsp; <strong>
                THÊM SẢN PHẨM</strong></td>
        </tr>
            <tr style="color: #000000">
                <td style="height: 19px; width: 102px;">
                </td>
                <td style="height: 19px">
                </td>
                <td style="height: 19px">
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label></td>
            </tr>
            <tr style="color: #000000">
                <td style="width: 102px; height: 24px">
                    Danh mục</td>
                <td style="height: 24px">
                </td>
                <td style="height: 24px">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="173px">
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="height: 21px; width: 102px;">
                </td>
                <td style="height: 21px">
                </td>
                <td style="height: 21px">
                </td>
            </tr>
            <tr>
                <td style="width: 102px">
                    Tên SP&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="txt_tieude" runat="server" CssClass="txt_10" Width="600px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txt_tieude" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 102px">
                </td>
                <td>
                </td>
                <td style="height: 15px">
                </td>
            </tr>
            <tr>
                <td style="width: 102px">
                    Mô tả SP</td>
                <td>
                    </td>
                <td style="font-weight: bold">
                    <asp:TextBox ID="txt_mota" runat="server" Height="100px" TextMode="MultiLine" 
                        Width="600px"></asp:TextBox>
                  
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txt_mota" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                  
                </td>
            </tr>
            <tr>
                <td style="height: 246px; width: 102px;" valign="top">
                    <br />
                    Chi tiết SP</td>
                <td style="height: 246px">
                    &nbsp;</td>
                <td style="height: 246px">
               
                    
                    
               
                    
                    
               
                 <FTB:FreeTextBox id="FreeTextBox2"
runat="server" ImageGalleryPath="~/uploads/" 
                        ToolbarLayout="ParagraphMenu,FontFacesMenu,FontSizesMenu,FontForeColorsMenu,FontForeColorPicker,FontBackColorsMenu,FontBackColorPicker|Bold,Italic,Underline,Strikethrough,Superscript,Subscript,RemoveFormat|JustifyLeft,JustifyRight,JustifyCenter,JustifyFull;BulletedList,NumberedList,Indent,Outdent;CreateLink,Unlink,InsertImage|Cut,Copy,Paste,Delete;Undo,Redo,Print,Save|SymbolsMenu,StylesMenu,InsertHtmlMenu|InsertRule,InsertDate,InsertTime|InsertTable,EditTable;InsertTableRowAfter,InsertTableRowBefore,DeleteTableRow;InsertTableColumnAfter,InsertTableColumnBefore,DeleteTableColumn|InsertForm,InsertTextBox,InsertTextArea,InsertRadioButton,InsertCheckBox,InsertDropDownList,InsertButton|InsertDiv,EditStyle,InsertImageFromGallery,Preview,SelectAll,WordClean,NetSpell" /> 
               
                    
                    
               
                    
                    
               
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="FreeTextBox2" ErrorMessage="(*)"></asp:RequiredFieldValidator>
               
                    
                    
               
                    
                    
               
                    
                </td>
            </tr>
            <tr style="font-size: 12pt; font-family: Times New Roman">
                <td style="width: 102px; height: 24px;">
                    Giá hiện tại</td>
                <td style="height: 24px">
                    &nbsp;</td>
                <td style="height: 24px">
                                <asp:TextBox ID="txtgiahientai" runat="server" CssClass="txt_10" Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="txtgiahientai" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                </td>
            </tr>
        <tr style="font-size: 12pt; font-family: Times New Roman">
            <td style="width: 102px; height: 24px">
                Già Củ</td>
            <td style="height: 24px">
            </td>
            <td style="height: 24px">
                                <asp:TextBox ID="txtgiacu" runat="server" CssClass="txt_10" Width="200px"></asp:TextBox>
            </td>
        </tr>
            <tr style="font-size: 12pt; font-family: Times New Roman">
                <td style="height: 24px; width: 102px;">
                    Hình ảnh 
                </td>
                <td style="height: 24px">
                </td>
                <td style="height: 24px">
                    <asp:FileUpload ID="flimg"
                        runat="server" Width="342px" /></td>
            </tr>
            <tr style="font-size: 12pt; font-family: Times New Roman">
                <td style="height: 22px; width: 102px;">
                    Tùy chọn 
                </td>
                <td style="height: 22px">
                    &nbsp;</td>
                <td style="height: 22px"><table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                    <asp:CheckBox ID="chkisnew" runat="server" Checked="True" /></td>
                        <td style="width: 150px">
                            Sản phẩm mới</td>
                    </tr>
                    <tr>
                        <td>
                    <asp:CheckBox ID="chkissaleoff" runat="server" /></td>
                        <td style="width: 100px">
                            &nbsp;Sản phẩm khuyến mại</td>
                    </tr>
                    <tr>
                        <td style="height: 20px">
                    <asp:CheckBox ID="chkbestsell" runat="server" Checked="True" /></td>
                        <td style="width: 100px; height: 20px;">
                            &nbsp;Sản phẩm Vip</td>
                    </tr>
                </table>
                </td>
            </tr>
            <tr style="font-size: 12pt; font-family: Times New Roman">
                <td style="height: 24px; width: 102px;">
                    Hiển thị sp</td>
                <td style="height: 24px">
                    &nbsp;</td>
                <td style="height: 24px">
                    <asp:CheckBox ID="chk_enable" runat="server" Text="Chọn: kích hoạt" 
                        Checked="True" />
                </td>
            </tr>
            <tr style="font-size: 12pt; font-family: Times New Roman">
                <td style="height: 24px; width: 102px;">
                    &nbsp;</td>
                <td style="height: 24px">
                    &nbsp;</td>
                <td style="height: 24px">
                    <asp:Button ID="btn_Insert" runat="server" CssClass="form_submit"
                        Font-Bold="True" OnClick="btn_Insert_Click" Text="Thêm Mới" />&nbsp;
                    <asp:Button ID="btn_Cancel" runat="server" CssClass="form_submit"
                        Font-Bold="True" OnClick="btn_Cancel_Click" Text="Hủy bỏ" /></td>
            </tr>
        </table>
    </asp:View>
    <asp:View ID="View3" runat="server">
        <table id="Table3" border="0" cellpadding="1" style="border-collapse: collapse" width="100%">
            <tr>
                <td style="width: 105px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;</td>
                <td>
                                SỬA SẢN PHẨM<asp:HiddenField ID="HiddenField1" runat="server" />
                    <asp:HiddenField ID="HiddenField2" runat="server" />
                </td>
            </tr>
            <tr style="color: #000000; font-size: 12pt; font-family: Times New Roman;">
                <td style="height: 15px; width: 105px;">
                </td>
                <td style="height: 15px">
                </td>
                <td style="height: 15px">
                    <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label></td>
            </tr>
            <tr style="color: #000000; font-size: 12pt; font-family: Times New Roman;">
                <td style="width: 105px">
                    Danh mục con</td>
                <td>
                </td>
                <td>
                    <asp:DropDownList ID="e_ddlitem" runat="server" Width="200px">
                    </asp:DropDownList></td>
            </tr>
            <tr style="font-size: 12pt; font-family: Times New Roman"><td style="height: 24px; width: 105px;">
                    Hình ảnh
                </td>
                <td style="height: 24px">
                    </td>
                <td valign="bottom">
                    <asp:Image ID="e_image" runat="server" Height="90px" Width="90px" />
                    <asp:FileUpload ID="e_FileUpload1"
                        runat="server" Width="342px" /></td>
            </tr>
            <tr style="font-size: 12pt; font-family: Times New Roman">
                <td style="width: 105px">
                    Mã sản phẩm 
                </td>
                <td style="font-weight: bold">
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="e_id" runat="server" Width="200px" ReadOnly="True"></asp:TextBox></td>
            </tr>
            <tr style="font-size: 12pt; font-family: Times New Roman">
                <td style="width: 105px">
                </td>
                <td>
                </td>
                <td style="height: 15px">
                </td>
            </tr>
            <tr style="font-size: 12pt; font-family: Times New Roman">
                <td style="width: 105px">
                    Tiêu đề
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="e_tieudeu" runat="server" Width="500px"></asp:TextBox></td>
            </tr>
            <tr style="font-size: 12pt; font-family: Times New Roman">
                <td style="width: 105px">
                </td>
                <td>
                </td>
                <td style="height: 15px">
                </td>
            </tr>
            <tr style="font-size: 12pt; font-family: Times New Roman">
                <td style="height: 69px; width: 105px;">
                    Mô tả
                </td>
                <td style="height: 69px">
                    &nbsp;</td>
                <td style="font-weight: bold; height: 69px;">
                    <asp:TextBox ID="e_mota" runat="server" Height="100px" TextMode="MultiLine" Width="500px"> </asp:TextBox>
                </td>
            </tr>
            <tr style="font-size: 12pt; font-family: Times New Roman">
                <td style="height: 246px; width: 105px;" valign="top">
                    <br />
                    Nội dung 
                </td>
                <td style="height: 246px; font-weight: bold;">
                    &nbsp;</td>
                <td style="height: 246px">
                    <ftb:freetextbox id="e_chitiet" runat="server"  ></FTB:FreeTextBox>
                </td>
            </tr>
            <tr style="font-size: 12pt; font-family: Times New Roman">
                <td style="width: 105px" valign="top">
                    Giá
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <table border="0" cellpadding="0" cellspacing="0" class="all" width="100%">
                        <tr>
                            <td style="width: 150px">
                                Giá hiện tại
                            </td>
                            <td>
                                Giá khuyến mãi</td>
                        </tr>
                        <tr style="font-weight: bold">
                            <td style="width: 150px; height: 24px;">
                                <asp:TextBox ID="e_giahientai" runat="server" CssClass="txt_10" Width="112px"></asp:TextBox>
                                &nbsp;</td>
                            <td style="height: 24px">
                                <asp:TextBox ID="e_giacu" runat="server" CssClass="txt_10" Width="112px"></asp:TextBox>
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="font-size: 12pt; font-family: Times New Roman">
                <td style="height: 22px; width: 105px;" valign="top">
                    Tùy chọn SP:</td>
                <td style="height: 22px">
                    &nbsp;</td>
                <td style="height: 22px">
                    <table border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td>
                    <asp:CheckBox ID="e_chnew" runat="server" /></td>
                            <td style="width: 150px">
                                Sản phẩm mới</td>
                        </tr>
                        <tr>
                            <td>
                    <asp:CheckBox ID="e_chkhuyenmai" runat="server" /></td>
                            <td>
                                &nbsp;Sản phẩm khuyến mại</td>
                        </tr>
                        <tr>
                            <td style="height: 20px">
                    <asp:CheckBox ID="e_chhot" runat="server" /></td>
                            <td style="width: 100px; height: 20px;">
                                &nbsp;Sản phẩm Vip</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:CheckBox ID="e_chngaydang" runat="server" /></td>
                            <td>
                                Cập nhật&nbsp; ngày đăng</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="font-size: 12pt; font-family: Times New Roman">
                <td style="height: 24px; width: 105px;">
                    Hiển thị 
                </td>
                <td style="height: 24px">
                    &nbsp;</td>
                <td style="height: 24px">
                    <asp:CheckBox ID="e_chactive" runat="server" Text="Chọn: hiển thị" />
                </td>
            </tr>
            <tr style="font-size: 12pt; font-family: Times New Roman">
                <td style="height: 24px; width: 105px;">
                    &nbsp;</td>
                <td style="height: 24px">
                    &nbsp;</td>
                <td style="height: 24px">
                    <asp:Button ID="Button2" runat="server" CssClass="txt_10form_submit"
                        Font-Bold="True" Text="Lưu Lại" OnClick="Button2_Click" />&nbsp;
                    <asp:Button ID="Button3" runat="server" CssClass="form_submit"
                        Font-Bold="True" OnClick="btn_Cancel_Click" Text="Hủy bỏ" /></td>
            </tr>
        </table>
    </asp:View>
</asp:MultiView>
