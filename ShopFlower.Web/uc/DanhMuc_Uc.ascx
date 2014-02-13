<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DanhMuc_Uc.ascx.cs" Inherits="FlowerShop.uc.DanhMuc_Uc" %>
<div id="wp-centercol_inner">
                     												<div id="wp-pos-breadcrumbs">
							<span class="breadcrumbs pathway clearafter">
								<a href="Default.aspx" class="home"></a>
							<div id="crumbs">  
                                <asp:Literal ID="Literal1" runat="server"></asp:Literal><asp:Label ID="lbltieude1" runat="server" Text="Label"></asp:Label> <span class="current">
                                </span></div>							</span>

						</div>
							
<div id="wp-mainbody">
								<div id="shop-content">

<div class="product-listing-container">
	<h3 class="wp-moduletitle">
		<span>
            <asp:Label ID="lbltieude" runat="server" Text="Label"></asp:Label></span>
	</h3>
</div>
<div>
	</div>

<div class="product-listing-container" style="padding: 0 1.2em 0 0.5em;" id="product_list">
<div class="product-listing-container-selection clearafter" id="dm_tabs_1">
								<ul class="dm_menu_1 clearafter">
<li class="dm_menu_item_1 item-1"><span><a   class="dm_selected">Hiển Thị :<asp:DropDownList 
        ID="DropDownList1" runat="server" AutoPostBack="True" 
                Width="50px" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>32</asp:ListItem>

            </asp:DropDownList></a></span></li>
	</ul></div>
	<div id="product_list_inner">

<div id="category-child-list">
<ul>
	 </ul>
</div>
<div class="moduletable">
<div class="cat-desc"></div>

<asp:DataList ID="DataList1" runat="server" RepeatColumns="4" 
        style="margin-right: 583px">
        
        <HeaderTemplate>
            <table border="0" cellpadding="0" cellspacing="0" width="100%"><tr>
            
        </HeaderTemplate>
        <ItemTemplate>
           	
            <td width="8%" align="center">
<div class="product-thumbnail">	<a title='<%# Eval("pname") %>' href="?page=chitietsanpham&id=<%# Eval("id") %>">
<img src="uploads/products/<%# Eval("pimage") %> " height="240" width="185" border="0" />	</a></div>
<div class="product-title">		<h2><a title='<%# Eval("pname") %>' href="?page=chitietsanpham&id=<%# Eval("id") %>">
    <asp:Label ID="Label1" runat="server" Text='<%# Eval("pname") %>'></asp:Label></a></h2></div>
<div class="product-price">		<span class="productPrice">	<asp:Label ID="lb2" runat="server" Text='<%# Eval("ppricecurrent","{0:0,000}")%>'></asp:Label> VND</span></div>
</td>
			

        </ItemTemplate>
        <FooterTemplate>
            </tr></table>
        </FooterTemplate>
    </asp:DataList>


		</div>

			<div class="clearbreak">
		</div>
	</div>
</div>




<!-- BEGIN PAGE NAVIGATION -->
<div align="center">
		<div class="wp-pagenavi">
            
            </asp:Label><asp:LinkButton ID="bntTroLai" runat="server" 
                onclick="bntTroLai_Click"><<</asp:LinkButton>
                <asp:Label ID="Label2" runat="server" Text="1/1">
                </asp:Label><asp:LinkButton ID="bntNext" runat="server" 
                onclick="bntNext_Click">>></asp:LinkButton>
</div></div>
<!-- END PAGE NAVIGATION --></div>

							</div>
							</div>