<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DanhMuc.ascx.cs" Inherits="FlowerShop.AdminControls.DanhMuc" %>
<asp:MultiView ID="MultiView1" runat="server">
    <asp:View ID="View1" runat="server">
        <table style="width: 750px; height: 100%">
            <tr>
                <td>
                    &nbsp;<asp:Image ID="Image1" runat="server" ImageUrl="~/uploads/admin/add-user-icon.png" />
                    <asp:LinkButton
                        ID="lbtThemMoi" runat="server" onclick="lbtThemMoi_Click" >Thêm Mới</asp:LinkButton><asp:Label
                            ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td width="100%">
                    <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand">
                        <HeaderTemplate>
                            <table border="0" cellpadding="0" cellspacing="0" width="700">
                                <tr style="background-color: #006699; font-weight: bold; height: 30px; color: #ffffff">
                                    <td align="center">
                                        Tên Danh Mục
                                    </td>
                                    <td align="left">
                                        Trạng Thái Hiển Thị
                                    </td>
                                    <td align="left">
                                        Thuộc Danh Mục
                                    </td>
                                    <td align="left">
                                        Thao tác
                                    </td>
                                </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr onmouseout="style.backgroundColor='#ffffff'" onmouseover="style.backgroundColor='#eef7ff'"
                                style="height: 30px;">
                                <td align="left">
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("id") %>'
                                        CommandName="edit" Text='<%# Eval("names") %>'></asp:LinkButton>
                                </td>
                                <td align="left">
                                    <asp:Label ID="lblactive" runat="server" Text='<%# Eval("active") %>'></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:Label ID="lblparent" runat="server" Text='<%# Eval("parentid") %>'></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/uploads/admin/edit.jpeg"
                                        AlternateText="Sửa" CommandArgument='<%# Eval("id") %>' CommandName="edit" />
                                    /
                                    <asp:ImageButton ID="ImageButton1"  runat="server" ImageUrl="~/uploads/admin/remove.jpg"
                                        a AlternateText="Xóa" CommandArgument='<%# Eval("id") %>' CommandName="del" OnLoad="Delete_Load" />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>
                    </asp:DataList>
                </td>
            </tr>
            <tr>
                <td style="width: 435px">
                    &nbsp;
                </td>
            </tr>
        </table>
    </asp:View>
    <asp:View ID="View2" runat="server">
        <table border="0" style="width: 750px">
            <tr>
                <td style="width: 150px; height: 21px">
                </td>
                <td style="width: 500px; height: 21px">
                    THÊM DANH MỤC
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Tên Danh Mục :
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox><asp:RequiredFieldValidator
                        ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>thuộc
                    danh mục&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="162px" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Vị Trí :
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="103px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2"
                        ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox2"
                        ErrorMessage=" Number" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Trạng Thái :
                </td>
                <td>
                    <asp:CheckBox ID="cbstatus" runat="server" Text="Hiển Thị" />
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td>
                    <asp:Button ID="bntThemMoi" runat="server"  Text="Thêm Mới" 
                        onclick="bntThemMoi_Click" />&nbsp;<asp:Button
                        ID="Button4" runat="server"  Text="Thoát" Width="49px"
                        CausesValidation="False" onclick="Button4_Click1" />
                </td>
            </tr>
        </table>
    </asp:View>
    <asp:View ID="View3" runat="server">
        <table border="0" style="width: 750px">
            <tr>
                <td style="width: 150px; height: 21px">
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                </td>
                <td style="width: 500px; height: 21px">
                    SỬA DANH MỤC
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Tên Danh Mục :
                </td>
                <td>
                    <asp:TextBox ID="e_txtten" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage="*"></asp:RequiredFieldValidator>thuộc danh mục&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="162px" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Vị Trí :
                </td>
                <td>
                    <asp:TextBox ID="e_txtvitri" runat="server" Width="103px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="e_txtvitri"
                        ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="e_txtvitri"
                        ErrorMessage=" Number" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Trạng Thái :
                </td>
                <td>
                    <asp:CheckBox ID="e_CheckBox1" runat="server" Text="Hiển Thị" />
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td>
                    &nbsp;<asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Lưu Lại" />
                    <asp:Button ID="Button3" runat="server" OnClick="Button4_Click" Text="Thoát" Width="49px"
                        CausesValidation="False" />
                </td>
            </tr>
        </table>
    </asp:View>
</asp:MultiView>