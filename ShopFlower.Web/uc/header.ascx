<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="header.ascx.cs" Inherits="FlowerShop.uc.header" %>
  <script type="text/javascript">
      $(document).ready(function () {
          $("#<%=TextBox1.ClientID%>").autocomplete('auto.ashx');
      });       
    </script>
<div id="wp-pos-top">
                    <div class=" wp-modulecontainer">
                        <div class="wp-modulecontainer_inner">
                            <div class="wp-modulecontent" style="height: 28px;">
                                <ul class="menu-topmenu menu-iconmenu">
                                    <%if (Session["admin"] == null)
                                      { %>
                                    <li class="item53 order1 first"><a href="default.aspx?page=login" rel="nofollow"><span>
                                        Đăng nhập</span></a></li>
                                    <li class="item54 order2 last"><a href="Default.aspx?page=register" rel="nofollow"><span>
                                        Đăng kí thành viên</span></a></li>
                                    <%}
                                      else
                                      { 
               
                                    %>
                                    <li class="item54 order2 last"><a href="Default.aspx?page=thongtinuser" rel="nofollow">
                                        <span>Xin Chào : <b>
                                            <%=Session["username"].ToString()%></b></span></a></li>
                                    <li class="item53 order1 first"><a href="default.aspx?page=logout" rel="nofollow"><span>
                                        Đăng Xuất</span></a></li>
                                    <%} %>
                                </ul>
                                <div class="clearbreak">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class=" wp-modulecontainer">
                        <div class="wp-modulecontainer_inner">
                            <div class="wp-modulecontent">
                                <p style="text-align: right;">
                                    <img src="App_Themes/themes/FlowerShop/images/hotline.png" border="0" alt="Liên Hệ T2 shop"
                                        title="Liên Hệ Thời Trang T2" /></p>
                                <!--BEGIN Search Box -->
                                <div class="virtuemart_advsearch">
                                    <span class="isearch"></span>
                                    <asp:TextBox ID="TextBox1" runat="server" class="inputbox" onfocus="if (this.value == 'Nhập Tên-Mã sản phẩm') {this.value = '';}" onblur="if (this.value == '') {this.value = 'Nhập Tên-Mã sản phẩm';}" value="Nhập Tên-Mã sản phẩm"></asp:TextBox>
                                    <%--<input type="text" size="20" name="s" class="inputbox" value="Nhập tên sản phẩm" onblur="if (this.value == '') {this.value = 'Nhập tên sản phẩm';}" onfocus="if (this.value == 'Nhập tên sản phẩm') {this.value = '';}"/>--%>
                                    <asp:Button ID="Button1" runat="server" Text="Button" class="button search" OnClick="Button1_Click" TabIndex="10" />
                                </div>
                                <!-- End Search Box -->
                                <div class="clearbreak">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>