<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="menu_footer.ascx.cs" Inherits="FlowerShop.uc.menu_footer" %>


<div class="wp-modulecontent"><ul id="menu-menu-1" class="menu-divmenu"><li class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-46"><a title="TRANG CHỦ" href="" >TRANG CHỦ</a></li>
 <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-8273"><a href='Default.aspx?page=danhmuccha&id=<%# Eval("id")%>'><span><%# Eval("names")%></span></a></li>
                </ItemTemplate>
                </asp:Repeater> 
                <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-8273" id="menu-item-8273"><a href='Default.aspx?page=sale' title="HÀNG GIẢM GIÁ"><span>HÀNG SALE</span></a></li>
                <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-8273" id="Li1"><a href='Default.aspx?page=lienhe' title="LIÊN HỆ"><span>LIÊN HỆ</span></a></li>

</ul></div>