<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="index_list.ascx.cs" Inherits="FlowerShop.uc.index_list" %>
<%@ Register src="SanPhamMoi.ascx" tagname="SanPhamMoi" tagprefix="uc1" %>

<%@ Register src="SP_Hot.ascx" tagname="SP_Hot" tagprefix="uc2" %>


<div id="wp-centercol_inner"><span style="display: table; height: 8px; width: 100%;"></span>
    <div id="wp-usermodules1" class="wp-modulescontainer wp-modulescontainer1">
        <div id="wp-usermodules1_inner_grid1">
            <div id="wp-pos-user1">
               <uc1:SanPhamMoi ID="SanPhamMoi1" runat="server" />
                <%--Sản phẩm hot nhất--%>
              <uc2:SP_Hot ID="SP_Hot1" runat="server" />
                <%--Sản phẩm mới nhất--%>
                
              
            </div></div></div></div>