<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MainMenu.ascx.cs" Inherits="FlowerShop.uc.MainMenu" %>
<div id="wp-menu" class="clearafter"><div id="wp-pos-mainmenu">		<div class=" wp-modulecontainer"><div class="wp-modulecontainer_inner">


			<div class="wp-modulecontent"><ul id="menu-menu" class="menu-mainmenu"><li id="menu-item-46" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-46"><a title="TRANG CHỦ" href="default.aspx" ><span>TRANG CHỦ</span></a></li>

                <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                <li id="menu-item-20353" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-20353"><a href='Default.aspx?page=danhmuccha&id=<%# Eval("id")%>'><span><%# Eval("names")%></span></a></li>
                </ItemTemplate>
                </asp:Repeater> 
                 <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-8273" id="Li2"><a href='Default.aspx?page=tintuc' title="Tin Thời Trang"><span>TIN TỨC</span></a></li>
                <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-8273" id="menu-item-8273"><a href='Default.aspx?page=sale' title="HÀNG GIẢM GIÁ"><span>HÀNG SALE</span></a></li>
                <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-8273" id="Li1"><a href='Default.aspx?page=lienhe' title="LIÊN HỆ"><span>LIÊN HỆ</span></a></li>

</ul></div>





<div class="clearbreak"></div></div></div>	</div>	</div>