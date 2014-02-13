<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="users.ascx.cs" Inherits="FlowerShop.AdminControls.users" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:MultiView ID="MultiView1" runat="server">
    <asp:View ID="View1" runat="server">
        &nbsp;&nbsp;
        <table width="550">
            <tr>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Thêm Mới</asp:LinkButton>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/uploads/admin/add-user-icon.png" />
                </td>
                <td>
                </td>
            </tr>
        </table>
        <br />
        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
            <HeaderTemplate>
                <table width="750" cellpadding="0" cellspacing="0" border="0">
                    <tr style="background-color: #006699; font-weight: bold; height: 30px; color: #ffffff">
                        <td width="180">
                            Tên đăng nhập
                        </td>
                        <td width="180">
                            Email
                        </td>
                        <td width="180">
                            Họ tên
                        </td>
                        <td>
                            Trạng thái
                        </td>
                        <td align="left">
                            Thao tác
                        </td>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr style="height: 25px;" onmouseover="style.backgroundColor='#eef7ff';style.color='red'"
                    onmouseout="style.backgroundColor='#ffffff';style.color='black'">
                    <td>
                        <%#Eval("username") %>
                    </td>
                    <td>
                        <%#Eval("email") %>
                    </td>
                    <td>
                        <%#Eval("fullname") %>
                    </td>
                    <td>
                        <asp:LinkButton ID="lnkStatus" runat="server" CommandArgument='<%#Eval("id") %>'
                            CommandName="status"><%#  (Boolean.Parse(Eval("status").ToString())) ? "Kích Hoạt" : "Không Kích Hoạt"%></asp:LinkButton>
                    </td>
                    <td align="left">
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("id") %>'
                            CommandName="edit">Sửa</asp:LinkButton>&nbsp; ||
                        <asp:LinkButton OnLoad="Delete_Load" ID="LinkButton3" runat="server" CommandArgument='<%# Eval("id") %>'
                            CommandName="del">Xóa</asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
    </asp:View>
    <asp:View ID="View2" runat="server">
        <table border="0" cellpadding="2" cellspacing="2" width="600">
            <tr>
                <td colspan="3">
                    <h2>
                        <strong>Thông tin người dùng</strong></h2>
                </td>
            </tr>
            <tr>
                <td style="width: 125px">
                </td>
                <td style="width: 5px">
                </td>
                <td>
                    &nbsp;<asp:HiddenField ID="HiddenField1" runat="server" />
                    <asp:HiddenField ID="HiddenField_Pass" runat="server" />
                </td>
            </tr>
            <tr>
                <td style="width: 125px">
                    Tên đăng nhập
                </td>
                <td style="width: 5px">
                </td>
                <td>
                    <asp:TextBox ID="e_username" runat="server" Width="180px" ReadOnly="True" CssClass="form_input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="e_username" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 125px">
                    Email:
                </td>
                <td style="width: 5px">
                </td>
                <td>
                    <asp:TextBox ID="e_email" runat="server" Width="181px" CssClass="form_input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="e_email" Display="Dynamic" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="e_email" Display="Dynamic" 
                        ErrorMessage="Không đúng định dạng" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 125px">
                    Mật khẩu
                </td>
                <td style="width: 5px">
                </td>
                <td>
                    <asp:TextBox ID="e_pass" runat="server" Width="180px" TextMode="Password" CssClass="form_input"></asp:TextBox>(để
                    trống nếu không muốn thay đổi)
                </td>
            </tr>
            <tr>
                <td style="width: 125px">
                    Họ tên
                </td>
                <td style="width: 5px">
                </td>
                <td>
                    <asp:TextBox ID="e_fullname" runat="server" Width="180px" CssClass="form_input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="e_fullname" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 125px; height: 28px;">
                    Địa chỉ :
                </td>
                <td style="width: 5px; height: 28px;">
                </td>
                <td style="height: 28px">
                    <asp:TextBox ID="e_add" runat="server" Width="180px" CssClass="form_input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="e_add" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 125px">
                    Ngày sinh
                </td>
                <td style="width: 5px">
                </td>
                <td>
                    <asp:TextBox ID="e_dob" runat="server" Width="180px" CssClass="form_input"></asp:TextBox>
                    <asp:CalendarExtender ID="e_dob_CalendarExtender" runat="server" 
                        Format="dd/MM/yyyy" TargetControlID="e_dob">
                    </asp:CalendarExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="e_dob" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 125px">
                    Số điện thoại
                </td>
                <td style="width: 5px">
                </td>
                <td>
                    <asp:TextBox ID="e_phone" runat="server" Width="180px" CssClass="form_input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="e_phone" ErrorMessage="(*)" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="e_phone" Display="Dynamic" ErrorMessage="Sai định dạng" 
                        ValidationExpression="0\d{9,10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 125px">
                </td>
                <td style="width: 5px">
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td style="width: 125px; height: 120px">
                    Quyền hạn
                </td>
                <td style="width: 5px; height: 120px">
                </td>
                <td style="height: 120px">
                    <asp:CheckBox ID="roleuser" runat="server" Text="KHông quyền quản lý chỉ là người dùng" /><br />
                    <asp:CheckBox ID="e_user" runat="server" Text="Quản lý User" /><br />
                    <asp:CheckBox ID="e_danhmuc" runat="server" Text="Quản Lý Danh Mục" />
                    <br />
                    <asp:CheckBox ID="e_sanpham" runat="server" Text="Quản lý sản phẩm" />
                    <br />
                    <asp:CheckBox ID="e_dathang" runat="server" Text="Quản lý đặt hàng" />
                    <br />
                    <asp:CheckBox ID="e_tintuc" runat="server" Text="Quản lý tin tức" />
                    <br />
                    <asp:CheckBox ID="e_lienhe" runat="server" Text="Quản lý liên hệ" />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 125px">
                    Trạng thái:
                </td>
                <td style="width: 5px">
                </td>
                <td>
                    <asp:CheckBox ID="ckbStatus" runat="server" />
                </td>
            </tr>
            <tr>
                <td style="width: 125px">
                </td>
                <td style="width: 5px">
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td style="width: 125px">
                </td>
                <td style="width: 5px">
                </td>
                <td>
                    <asp:Button ID="btn_save" runat="server" OnClick="Button1_Click" Text="Lưu Lại" CssClass="form_submit" />
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 125px">
                </td>
                <td style="width: 5px">
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td style="width: 125px; height: 29px;">
                </td>
                <td style="width: 5px; height: 29px;">
                </td>
                <td style="height: 29px">
                </td>
            </tr>
            <tr>
                <td style="width: 125px">
                </td>
                <td style="width: 5px">
                </td>
                <td>
                    <asp:ScriptManager ID="ScriptManager1" runat="server" 
                        EnableScriptGlobalization="True">
                    </asp:ScriptManager>
                </td>
            </tr>
        </table>
    </asp:View>
    <asp:View ID="View3" runat="server">
        <table border="0" cellpadding="2" cellspacing="2" width="600">
            <tr>
                <td colspan="3">
                    <strong>Thêm tài Khoản</strong>
                </td>
            </tr>
            <tr>
                <td style="width: 125px; height: 19px;">
                </td>
                <td style="width: 5px; height: 19px;">
                </td>
                <td style="height: 19px; color: #FF0000; font-weight: 700;">
                    <asp:Literal ID="ltmsg" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td style="width: 125px">
                    Tên đăng nhập:
                </td>
                <td style="width: 5px">
                </td>
                <td>
                    <asp:TextBox ID="n_username" runat="server" Width="180px" CssClass="form_input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="n_username" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 125px">
                    Email
                </td>
                <td style="width: 5px">
                </td>
                <td>
                    <asp:TextBox ID="n_email" runat="server" Width="180px" CssClass="form_input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="n_email" Display="Dynamic" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="n_email" Display="Dynamic" 
                        ErrorMessage="Không đúng định dạng" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 125px; height: 16px;">
                    Mật khẩu:
                </td>
                <td style="width: 5px; height: 16px;">
                </td>
                <td style="height: 16px">
                    <asp:TextBox ID="n_pass1" runat="server" TextMode="Password" Width="180px" CssClass="form_input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="n_pass1" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 125px">
                    Nhập lại mật khẩu:
                </td>
                <td style="width: 5px">
                </td>
                <td>
                    <asp:TextBox ID="n_pass2" runat="server" TextMode="Password" Width="180px" CssClass="form_input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="n_pass2" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="n_pass1" ControlToValidate="n_pass2" 
                        ErrorMessage="Mật khẩu không trùng"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 125px">
                    Họ tên:
                </td>
                <td style="width: 5px">
                </td>
                <td>
                    <asp:TextBox ID="fuulname" runat="server" Width="180px" CssClass="form_input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="fuulname" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 125px">
                    Địa chỉ
                </td>
                <td style="width: 5px">
                </td>
                <td>
                    <asp:TextBox ID="n_add" runat="server" Width="180px" CssClass="form_input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="n_add" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 125px; height: 28px;">
                    Ngày sinh :
                </td>
                <td style="width: 5px; height: 28px;">
                </td>
                <td style="height: 28px">
                    <%--<uc1:datetime ID="Datetime1" runat="server" />--%>
                    <asp:TextBox ID="n_txtNgaySinh" runat="server" CssClass="form_input" 
                        Width="180px"></asp:TextBox>
                    <asp:CalendarExtender ID="n_txtNgaySinh_CalendarExtender" runat="server" 
                        Format="dd/MM/yyyy" TargetControlID="n_txtNgaySinh">
                    </asp:CalendarExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                        ControlToValidate="n_txtNgaySinh" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 125px">
                    Số điện thoại
                </td>
                <td style="width: 5px">
                </td>
                <td>
                    <asp:TextBox ID="n_phone" runat="server" Width="180px" CssClass="form_input"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                        ControlToValidate="n_phone" ErrorMessage="(*)" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="n_phone" ErrorMessage="Sai định dạng" 
                        ValidationExpression="0\d{9,10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 125px; height: 120px">
                    Quyền hạn
                </td>
                <td style="width: 5px; height: 120px">
                </td>
                <td style="height: 120px">
                    <asp:CheckBox ID="CheckBox2" runat="server" Text="Không quyền quản lý" /><br />
                    <asp:CheckBox ID="n_cbkUser" runat="server" Text="Quản lý User" /><br />
                    <asp:CheckBox ID="n_cbkDanhMuc" runat="server" Text="Quản Lý Danh Mục" />
                    <br />
                    <asp:CheckBox ID="n_cbkSanPham" runat="server" Text="Quản lý sản phẩm" />
                    <br />
                    <asp:CheckBox ID="n_cbkdathang" runat="server" Text="Quản lý đặt hàng" />
                    <br />
                    <asp:CheckBox ID="n_cbktintuc" runat="server" Text="Quản lý tin tức" />
                    <br />
                    <asp:CheckBox ID="n_cbklienhe" runat="server" Text="Quản lý liên hệ" />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 125px">
                    Kích hoạt:
                </td>
                <td style="width: 5px">
                </td>
                <td>
                    <asp:CheckBox ID="n_status" runat="server" />
                </td>
            </tr>
            <tr>
                <td style="width: 125px">
                </td>
                <td style="width: 5px">
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td style="width: 125px">
                </td>
                <td style="width: 5px">
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Thêm Mới" CssClass="form_submit" />
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 125px">
                </td>
                <td style="width: 5px">
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td style="width: 125px; height: 29px;">
                </td>
                <td style="width: 5px; height: 29px;">
                </td>
                <td style="height: 29px">
                </td>
            </tr>
            <tr>
                <td style="width: 125px">
                </td>
                <td style="width: 5px">
                </td>
                <td>
                </td>
            </tr>
        </table>
    </asp:View>
</asp:MultiView>
