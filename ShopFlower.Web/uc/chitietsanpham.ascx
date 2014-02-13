<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="chitietsanpham.ascx.cs" Inherits="FlowerShop.uc.chitietsanpham" %>


<div id="wp-centercol_inner">
                     												<div id="wp-pos-breadcrumbs">
							<span class="breadcrumbs pathway clearafter">
								
							<div id="crumbs"><%=this.pro.pname %>  </div>							</span>

						</div>
							
<div id="wp-mainbody-content">
										
<div style="display:none;" class="shop_info"><b>Info</b>: Sản phẩm bạn chọn vừa được thêm vào giỏ hàng<br>
</div>
<div id="shop-content">

<div id="product-details">
	<!--<h1 id="details-title">Váy Hè Cao Cấp V992 </h1>-->
	<div id="product-details-fullinfo">
  
		<div id="details-fullinfo-thumbnail">
			
            <img border="0" width="185" height="240" 
                src="uploads/products/<%=this.pro.pimage %>"> <br>
<center></center>

</div>
<div id="details-description">
<table cellspacing="0" cellpadding="0" border="0" style="width: 100%;" class="table-fullinfo">
<tbody>
<tr>
<td width="30%"><span>Tên sản phẩm :<br></span></td>
<td width="70%" class="table-description">
<h2 style="font-size: 20px; color: #D63330;"><%=this.pro.pname %></h2>
</td>
</tr>
<tr>
<td width="30%"><span>Màu sắc:<br></span></td>
<td width="70%" class="table-description">Trắng</td>
</tr>
<tr>
<td width="30%"><span>Kích cỡ: <br></span></td>
<td width="70%" class="table-description">6 8 10</td>
</tr>
	
<tr>
<td width="30%"><span>Giá: <br></span></td>
<td width="70%" class="table-description"><span style="font-size: 14pt; color: #d63330;"><%=this.gia%><br></span></td>
</tr>	
<tr>
<td width="30%"><span>Tình trạng :<br></span></td>
<td width="70%" class="table-description"><span style="color: #687F1B;">CÒN HÀNG<br></span></td>
</tr>
<tr>
<td width="30%"><span>Nước sản xuất :<br></span></td>
<td width="70%" class="table-description"><span style="color: #d63330;">HÀN QUỐC<br></span></td>
</tr>
    

<tr>
<td width="30%"><span>Mô Tả :<br></span></td>
<td width="70%" class="table-description"><span style="font-size: 14px; color: #D63330;"><%=this.pro.pmota %><br></span></td>
</tr>

</tbody>
</table>
</div>
<div id="details-fullinfo">

    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/uploads/mua.jpg" onclick="ImageButton1_Click" />
	&nbsp;<div class="content-block-orange"><span>THÔNG TIN SẢN PHẨM</span></div>
<div id="details-fullinfo_inner">
<p> <%=this.pro.pchitiet %></p>
    <h3 style="width: 760px;
margin-left: -36px;" class="wp-moduletitle"><span class="wp-moduleicon">GỬI BÌNH LUẬN</span></h3>

<g:plusone size="small"></g:plusone>

<div id="fb-root"></div>
<script>    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/vi_VN/all.js#xfbml=1";
        fjs.parentNode.insertBefore(js, fjs);
    } (document, 'script', 'facebook-jssdk'));</script>

<div class="fb-comments" data-href='<%=this.duongdan %>' data-width="700" data-num-posts="10" ></div>
<h3 style="width: 760px;
margin-left: -36px;" class="wp-moduletitle"><span class="wp-moduleicon">SẢN PHẨM CÙNG LOẠI</span></h3>

						
    <asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>
                      <div class="related-post">
<!-- The product image DIV. -->
<div class="product-thumbnail">	<a href="?page=chitietsanpham&id=<%# Eval("id") %>" >	
<img width="150" height="194" border="0" src="uploads/products/<%# Eval("pimage") %>" style="border: 1px solid #CCC;
padding: 5px;">	</a></div>
<!-- The product name DIV. -->	
<div style="text-align: center;" class="product-title">		<a href="?page=chitietsanpham&id=<%# Eval("id") %>" title=""><h2><%# Eval("pname") %></h2></a></div>
<div style="text-align: center;" class="product-price">		<span class="productPrice">		<%# Eval("ppricecurrent","{0:0,000}")%> VND			</span></div>
</div>
    </ItemTemplate>
    </asp:Repeater>
				

</div></div></div>
<div class="clearbreak"></div>
</div></div>
<span class="small"></span>
</div></div>