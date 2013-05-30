<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NavigationBar.ascx.cs" Inherits="WebApplication1.Navigation.NavigationBar" %>

<asp:ListView ID="ListView1" runat="server">
    <ItemTemplate>

        <asp:HyperLink NavigateUrl='<%#Eval("URL") %>' Text='<%#Eval("Text") %>' runat="server"></asp:HyperLink >
    </ItemTemplate>

</asp:ListView>



