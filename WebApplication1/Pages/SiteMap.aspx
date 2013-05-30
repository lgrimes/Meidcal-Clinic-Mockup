<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Primary.Master" AutoEventWireup="true" CodeBehind="SiteMap.aspx.cs" Inherits="WebApplication1.Pages.SiteMap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBODY" runat="server">
    <h2>Sitemap</h2>
    <div id="sitemap">
    <asp:SiteMapDataSource id="sitemap" runat="server" /> 
        <asp:TreeView ID="TreeSitemap" runat="server" DataSourceID="sitemap" ShowLines="True"
        ></asp:TreeView>


    </div>
</asp:Content>
