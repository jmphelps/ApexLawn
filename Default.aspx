<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHolder" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="formPlaceHolder" runat="Server">
    <h2>Select Mowers On Sale Now!</h2>
    <br />
    <asp:ListView ID="FrontPage" runat="server"
        DataSourceID="SqlDataSource1"
        GroupItemCount="3">
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>Sorry no products are available.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
            <td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr id="itemPlaceholderContainer" runat="server">
                <td id="itemPlaceholder" runat="server"></td>
            </tr>
        </GroupTemplate>

        <ItemTemplate>
            <td runat="server" style="">
                <asp:Label ID="TitleLabel" style="font-weight:bold;" runat="server" Text='<%# Eval("Title") %>' />
                <br />
                <asp:Image ImageUrl='<%#"" + Eval("ThumbImage") %>' ID="ThumbImage" runat="server" />

                <br />
                <span>Original Price:</span>
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price", "{0:c}") %>' />
                <br />
                <span style="font-weight:bold;color:red;">Sales Price:</span>
                <asp:Label ID="SalePriceLabel" CssClass="sale" runat="server" Text='<%# Eval("SalePrice", "{0:c}") %>' />
                <br />
                <br />
                <br />
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                            <tr id="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style=""></td>
                </tr>
            </table>
        </LayoutTemplate>

    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApexLawnConnection %>" SelectCommand="SELECT [Title], [ThumbImage], [Price], [SalePrice] FROM [Merchandise]"></asp:SqlDataSource>
</asp:Content>

