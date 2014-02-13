<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SanPhamMoi.ascx.cs" Inherits="FlowerShop.uc.SanPhamMoi" %>
<div class="product-listing-container wp-modulecontainer">
<div class="wp-modulecontainer_inner">
					<h3 class="wp-moduletitle">
						<span class="wp-moduleicon">Sản Phẩm Mới</span></h3>
						<div class="wp-modulecontent">
							<%--<div id="dm_tabs_1" class="product-listing-container-selection clearafter">
								<ul class="dm_menu_1 clearafter">
<li class="dm_menu_item_1 item-1"><a href="#" rel="dm_tab_1_1" class="dm_selected"><span>Xem Thêm</span></a></li>
	</ul></div>--%>


<div id="dm_container_1">
<div id="dm_tab_1_1" class="dm_tabcontent">		<div class="moduletable">
<%--
					
--%>
    <asp:DataList ID="DataList2" runat="server" RepeatColumns="4" 
        style="margin-right: 583px">
        
        <HeaderTemplate>
            <table border="0" cellpadding="0" cellspacing="0" width="100%"><tr>
            
        </HeaderTemplate>
        <ItemTemplate>
           	
            <td width="8%" align="center">
<div class="product-thumbnail">	<a title='<%# Eval("pname") %>' href="?page=chitietsanpham&id=<%# Eval("id") %>">
<img src='uploads/products/<%# Eval("pimage") %>' height="240" width="185" border="0" />	</a></div>
<div class="product-title">		<h2><a title='<%# Eval("pname") %>' href="?page=chitietsanpham&id=<%# Eval("id") %>">
    <asp:Label ID="Label1" runat="server" Text='<%# Eval("pname") %>'></asp:Label></a></h2></div>
<div class="product-price">		<span class="productPrice">	<asp:Label ID="lb2" runat="server" Text='<%# Eval("ppricecurrent","{0:0,000}")%>'></asp:Label> VND</span></div>
</td>
			

        </ItemTemplate>
        <FooterTemplate>
            </tr></table>
        </FooterTemplate>
    </asp:DataList>

		</div>	</div>

	</div><div class="clearbreak"></div></div></div></div>



