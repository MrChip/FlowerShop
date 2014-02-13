<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TinTuc.ascx.cs" Inherits="FlowerShop.uc.TinTuc" %>
<div id="wp-centercol_inner">
    <div id="wp-pos-breadcrumbs">
        <span class="breadcrumbs pathway clearafter"><a href="../Default.aspx" class="home">
        </a>
            <div id="crumbs">
                <span class="current">Tin Tức Thời Trang</span></div>
        </span>
    </div>
    <div id="wp-mainbody">
        <div id="shop-content">
            <div class="product-listing-container" style="padding: 0 1.2em 0 0.5em;" id="product_list">
                <div id="product_list_inner">
                    <div class="moduletable">
                        
                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                    <div class="news">
                            <div class="post-meta">
                                        <span class="dates">
                                            <%# Eval("NgayDang")%></span> </div>
                                        <div class="news-image">
                                            <a href='../Default.aspx?page=chitiettintuc&id=<%# Eval("id")%>'>
                                                <img width="602" height="350" src='../uploads/tintuc/<%# Eval("HinhDaiDien")%>' class="aligncenter size-full wp-image-45100"></a>
                                        </div>
                                        <div class="news-content">
                                            <h2>
                                                <a href='../Default.aspx?page=chitiettintuc&id=<%# Eval("id")%>'>
                                                    <%# Eval("TieuDe")%></a>
                                            </h2>
                                            <%# Eval("TomTat")%>
                                        </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                                <div align="center">
                                    	<div class="wp-pagenavi">
            
            </asp:Label><asp:LinkButton ID="bntTroLai" runat="server" 
                onclick="bntTroLai_Click"><<</asp:LinkButton>
                <asp:Label ID="Label2" runat="server" Text="1/1">
                </asp:Label><asp:LinkButton ID="bntNext" runat="server" 
                onclick="bntNext_Click">>></asp:LinkButton>
</div>
                                </div>
                            </div>
                            <div class="clearbreak">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
