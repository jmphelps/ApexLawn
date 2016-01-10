<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHolder" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="formPlaceHolder" runat="Server">
    <h2>ADMIN</h2>
    <ul>
        <li>
            <asp:HyperLink NavigateUrl="~/Merchandise.aspx" runat="server">Merchandise</asp:HyperLink></li>
        <li>
            <asp:HyperLink NavigateUrl="~/PushMower.aspx" runat="server">Push Mower Maintenance</asp:HyperLink></li>
        <li>
            <asp:HyperLink NavigateUrl="~/RidingMower.aspx" runat="server">Riding Mower Maintenance</asp:HyperLink></li>
    </ul>
</asp:Content>

