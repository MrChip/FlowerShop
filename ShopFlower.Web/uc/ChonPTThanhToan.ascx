<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ChonPTThanhToan.ascx.cs" Inherits="FlowerShop.uc.checkout1" %>

<div id="wp-centercol_inner">
                     												<div id="wp-pos-breadcrumbs">
							<span class="breadcrumbs pathway clearafter">
								<a href="http://thoitrangkorea.com" class="home"></a>
							<div id="crumbs"> <span class="current">Liên Hệ</span></div>							</span>

						</div>
							
<div id="wp-mainbody-content">
														<div id="wp-mainbody">
								
<div class="com-content ">
	<div class="article">
								
						<div class="wp-article-content">
						

<div class="probyitem">
 
<table style="width: 100%; background-color: #dddddd;" border="0" cellpadding="5" cellspacing="1">
        <tr>
            <td style="background-color: #ffffff; font-weight: 700;" align="center" >
                Đăng nhập tài khoản</td>
            <td style="background-color: #ffffff; font-weight: 700;" align="center" >
                Đăng ký tài khoản mới</td>
            <td style="background-color: #ffffff; font-weight: 700;" align="center" >
                Thanh toán như khách</td>
        </tr>
        <tr>
            <td align="center" style="background-color: #ffffff">
                <table align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="left" colspan="2" style="width: 191px">
                            <asp:Label ID="Labelerr" runat="server" ForeColor="Red"></asp:Label></td>
                    </tr>
                    <tr style="color: #000000">
                        <td colspan="2">
                            Tên đăng nhập:</td>
                    </tr>
                    <tr style="color: #000000">
                        <td style="width: 191px" colspan="2">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="inputbox" Width="180px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="width: 191px">
                            Mật khẩu :</td>
                    </tr>
                    <tr>
                        <td style="width: 191px" colspan="2">
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="inputbox" TextMode="Password"
                                Width="180px"></asp:TextBox></td>
                    </tr>
                </table>
            </td>
            <td valign="top" style="background-color: #ffffff"><ul>
            <li>Thanh toán nhanh hơn</li>
            <li>Nhận tin tức mới từ chúng tôi </li>
            <li>Nhận chương trình khuyến mãi 
            <ul>
            </li>
            </td>
            <td style="background-color: #ffffff;">
            </td>
        </tr>
        <tr>
            <td align="center" style="background-color: #ffffff">
                <asp:Button ID="Button1" runat="server" CssClass="ngothe" OnClick="Button1_Click"
                    Text="Đăng nhập" /></td>
            <td align="center" style="background-color: #ffffff" valign="top">
                <asp:Button ID="Button2" runat="server" CssClass="ngothe" Text="Đăng ký " 
                    onclick="Button2_Click" /></td>
            <td align="center" style="background-color: #ffffff">
                <asp:Button ID="Button3" runat="server" CssClass="ngothe" Text="Gửi đơn hàng" 
                    onclick="Button3_Click" /></td>
        </tr>
    </table>
     </div>


					</div>
		<span class="article_separator">&nbsp;</span> 
<div id="jc">
	<div id="comments">
			</div>
	
	</div> </div>
</div>

							</div>
													</div>
											</div>