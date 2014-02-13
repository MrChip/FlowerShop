<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Menu_Left.ascx.cs" Inherits="FlowerShop.uc.Menu_Left" %>
<div id="wp-pos-left">
    <%--chen vao day--%>
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
</div>
<%--thống kê truy cập--%>
<div class="box-cyan icon-24-disc wp-modulecontainer"><div class="wp-modulecontainer_inner"><h3 class="wp-moduletitle">

<span class="wp-moduleicon">THỐNG KÊ TRUY CẬP</span></h3>

			<div class="wp-modulecontent">
            <p align=center>Số lượt truy cập: <%= Application["DaTruyCap"].ToString() %></p>
            <p align=center>Số người Online: <%= Application["DangTruyCap"].ToString() %></p>
            </div></div></div>
<%--end thống kê truy cập--%>
<%--Giá vàng--%>
<%if (Request.QueryString["page"] != null)
  {%>
<div class="box-cyan icon-24-disc wp-modulecontainer"><div class="wp-modulecontainer_inner"><h3 class="wp-moduletitle">

<span class="wp-moduleicon">Giá vàng</span></h3>

			<div class="wp-modulecontent">
            <p align=center><div id="eGold" class="gold-price fl">&nbsp;</div></p>
           <script type="text/javascript" language="javascript">
               ShowGoldPrice(); // Hien thi gia Vang
                
</script>
            </div></div></div>
           

<%--tỷ giá--%>
<div class="box-cyan icon-24-disc wp-modulecontainer"><div class="wp-modulecontainer_inner"><h3 class="wp-moduletitle">

<span class="wp-moduleicon">TỶ GIÁ</span></h3>

			<div class="wp-modulecontent">
                <table width="100%" border="0" cellspacing="0" cellpadding="2">
        <tr>
          <td width="50%"><strong>USD</strong> </td>
          <td><script language="Javascript">                  document.write(vCosts[0]); //USD </script></td>
        </tr>
        <tr>
          <td><strong>GBP</strong></td>
          <td><script language="Javascript">                  document.write(vCosts[1]); //GBP </script></td>
        </tr>
        <tr>
          <td><strong>HKD</strong></td>
          <td><script language="Javascript">                  document.write(vCosts[2]); //HKD </script></td>
        </tr>

        <tr>
          <td><strong>CHF</strong></td>
          <td><script language="Javascript">                  document.write(vCosts[3]); //CHF </script></td>
        </tr>
        <tr>
          <td><strong>JPY</strong></td>
          <td><script language="Javascript">                  document.write(vCosts[4]); //JPY </script></td>
        </tr>
        <tr>
          <td><strong>AUD</strong></td>
          <td><script language="Javascript">                  document.write(vCosts[5]); //AUD </script></td>
        </tr>
        <tr>
          <td><strong>CAD</strong></td>
          <td><script language="Javascript">                  document.write(vCosts[6]); //CAD </script></td>
        </tr>

        <tr>
          <td><strong>SGD</strong></td>
          <td><script language="Javascript">                  document.write(vCosts[7]); //SGD </script></td>
        </tr>
        <tr>
          <td><strong>EUR</strong></td>
          <td><script language="Javascript">                  document.write(vCosts[8]); //EUR </script></td>
        </tr>
        <tr>
          <td><strong>NZD</strong></td>
          <td><script language="Javascript">                  document.write(vCosts[9]); //NZD </script></td>
        </tr>
        <tr>
          <td><strong>Bat Thái Lan</strong></td>
          <td><script language="Javascript">                  document.write(vCosts[10]); //Bat Thái Lan </script></td>
        </tr>
      </table>                

            </div></div></div>
<%--end tỷ giá--%>
 <%}
  else { } %>
<div class="box-white icon-24-megaphone wp-modulecontainer">
    <div class="wp-modulecontainer_inner">
        <h3 class="wp-moduletitle">
            <span class="wp-moduleicon">HỖ TRỢ TRỰC TUYẾN</span></h3>
        <div class="wp-modulecontent">
            <%--hổ trợ trực tuyến--%>
            <p align="center">
                <a href="ymsgr:SendIM?chimotnguoi1010" title="Ngô Thế">
                    <img border="0" align="middle" src="http://opi.yahoo.com/online?u=chimotnguoi10105&m=g&t=2" /></a></p>
            <p align="center">
                <a href="ymsgr:SendIM?chimotnguoi1010" title="Ngô Tú">
                    <img border="0" align="middle" src="http://opi.yahoo.com/online?u=chimotnguoi10105&m=g&t=2" /></a></p>
            <p align="center">
                <a href="ymsgr:SendIM?chimotnguoi1010" title="Hương" >
                    <img border="0" align="middle" src="http://opi.yahoo.com/online?u=chimotnguoi10105&m=g&t=2" /></a></p>
            
            <div class="clearbreak">
            </div>
        </div>
    </div>
</div>




<div class="clearbreak"></div>


</div></div>





<a href="default.aspx?page=cart">
    <%-- giỏ hàng--%>
    <div class="cart_right">
        <p>
            <span id="cart_right_product_count">
                <%=this.item.Count %></span> Sản phẩm
        </p>
        <p>
            <span class="text_bold"><span id="cart_right_total">
                <%=this.tong %></span> đ</span>
        </p>
    </div>
</a>