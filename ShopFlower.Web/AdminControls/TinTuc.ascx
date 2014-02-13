<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TinTuc.ascx.cs" Inherits="FlowerShop.AdminControls.TinTuc" %>
<%@ Register assembly="FreeTextBox" namespace="FreeTextBoxControls" tagprefix="FTB" %>
<style type="text/css">
    .style6
    {
        width: 100%;
    }
    .style8
    {
        height: 19px;
        text-align: center;
        font-size: large;
    }
    .style14
    {
        text-align: center;
    }
    .style15
    {
        width: 553px;
        text-align: left;
    }
    .style16
    {
        width: 129px;
        text-align: left;
    }
    .style17
    {
        width: 553px;
        text-align: center;
    }
    .style18
    {
        width: 129px;
        text-align: center;
    }
</style>
<asp:MultiView ID="MultiView1" runat="server">
    <asp:View ID="View1" runat="server">
        &nbsp;&nbsp;
        <table width="550">
            <tr>
                <td>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Thêm Mới</asp:LinkButton>
                    <asp:Image ID="Image1" runat="server" 
                        ImageUrl="~/uploads/admin/add-user-icon.png" /></td>
                <td>
                  <%--  <cc1:collectionpager id="CollectionPager1" runat="server" resultsformat="Hiển thị {0}-{1} (tất cả {2})"
                        sectionpadding="5" slidersize="5"></cc1:collectionpager>--%>
                </td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" onpageindexchanging="GridView1_PageIndexChanging" 
            onrowcommand="GridView1_RowCommand" PageSize="5" style="margin-top: 0px" 
            Width="746px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id">
                <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="TieuDe" HeaderText="Tiêu Đề" SortExpression="pname">
                <ControlStyle BorderWidth="200px" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Hình Ảnh">
                    <ItemTemplate>
                        <img alt="" src='uploads/tintuc/<%# Eval("HinhDaiDien") %>' style="height: 100px; width: 96px;" />
                    </ItemTemplate>
                    <ControlStyle Width="100px" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:BoundField DataField="NgayDang" HeaderText="Ngày Đăng" 
                    SortExpression="NgayDang">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Tình Trạng">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" 
                            Text='<%#  (Boolean.Parse(Eval("TrangThai").ToString())) ? "Hiển Thị" : "Không Hiển thị" %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:CheckBox ID="CheckBox7" runat="server" Checked='<%# Bind("active") %>' />
                    </EditItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
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
        <br />
                    
    </asp:View>
    <asp:View ID="View2" runat="server">
        <table align="center" class="style6" 
            style="border-style: solid; border-width: 0px">
            <tr>
                <td colspan="3" class="style8">
                    <asp:HiddenField ID="HiddenField_HinhAnh" runat="server" />
                    <asp:HiddenField ID="HiddenField_Id" runat="server" />
                    <strong>
                    <asp:Label ID="Label2" runat="server" 
                        Text="Label" style="text-align: center"></asp:Label></strong>
                </td>
            </tr>
            <tr>
                <td class="style16">
                    Tiêu đề</td>
                <td class="style15">
                    <asp:TextBox ID="txtTieuDe" runat="server" Width="513px" CssClass="form_input"></asp:TextBox><br />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtTieuDe" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style16">
                    Nội dung tóm tắt</td>
                <td class="style15">
                    <FTB:FreeTextBox ID="txtTomTat" runat="server" Height="150px">
                    </FTB:FreeTextBox><br />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtTomTat" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style16">
                    Nội dung</td>
                <td class="style15">
                
                    <FTB:FreeTextBox id="txtNoiDung" 
toolbarlayout="ParagraphMenu,FontFacesMenu,FontSizesMenu,FontForeColorsMenu,FontForeColorPicker,FontBackColorsMenu,FontBackColorPicker|Bold,Italic,Underline,Strikethrough,Superscript,Subscript,RemoveFormat|JustifyLeft,JustifyRight,JustifyCenter,JustifyFull;BulletedList,NumberedList,Indent,Outdent;CreateLink,Unlink,InsertImage|Cut,Copy,Paste,Delete;Undo,Redo,Print,Save|SymbolsMenu,StylesMenu,InsertHtmlMenu|InsertRule,InsertDate,InsertTime|InsertTable,EditTable;InsertTableRowAfter,InsertTableRowBefore,DeleteTableRow;InsertTableColumnAfter,InsertTableColumnBefore,DeleteTableColumn|InsertForm,InsertTextBox,InsertTextArea,InsertRadioButton,InsertCheckBox,InsertDropDownList,InsertButton|InsertDiv,EditStyle,InsertImageFromGallery,Preview,SelectAll,WordClean,NetSpell"
runat="Server"
DesignModeCss="/demos/demo.css" ImageGalleryPath="~/uploads/"	 />
                    <br />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtNoiDung" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style16">
                    Hình ảnh</td>
                <td class="style15">
                <asp:Image ID="e_image" runat="server" Height="90px" Width="90px" />
                    <asp:FileUpload ID="flimg" runat="server" style="text-align: left" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16">
                    Tình trạng</td>
                <td class="style15">
                    <asp:CheckBox ID="ckbTinhTrang" runat="server" Text="Đăng Bài" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <table align="center" class="style6">
            <tr>
                <td class="style14" colspan="3">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td class="style17">
                    <asp:Button ID="bntCapNhat" runat="server" Text="Cập Nhật" 
                        CssClass="form_submit" onclick="bntCapNhat_Click" />
                    <asp:Button ID="bntHuy" runat="server" Text="Bỏ Qua" CssClass="form_submit" 
                        onclick="bntHuy_Click" />
                </td>
                <td class="style14">
                    &nbsp;</td>
            </tr>
        </table>
    </asp:View>
</asp:MultiView>