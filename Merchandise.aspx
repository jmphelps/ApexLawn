<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Merchandise.aspx.cs" Inherits="Merchandise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHolder" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="formPlaceHolder" runat="Server">
    <asp:GridView ID="GridView1" CssClass="leftgrid" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:CommandField ShowSelectButton="True" ButtonType="Button" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>


    <asp:DetailsView ID="DetailsView1" CssClass="grid" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource2" Height="50px" Width="125px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
            <asp:BoundField DataField="idMfg" HeaderText="idMfg" SortExpression="idMfg" />
            <asp:BoundField DataField="FullImage" HeaderText="FullImage" SortExpression="FullImage" />
            <asp:BoundField DataField="ThumbImage" HeaderText="ThumbImage" SortExpression="ThumbImage" />
            <asp:BoundField DataField="EngineBrand" HeaderText="EngineBrand" SortExpression="EngineBrand" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="SalePrice" HeaderText="SalePrice" SortExpression="SalePrice" />
        </Fields>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
    </asp:DetailsView>


    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ApexLawnConnection %>" DeleteCommand="DELETE FROM [Merchandise] WHERE [id] = @id" InsertCommand="INSERT INTO [Merchandise] ([id], [Title], [Model], [idMfg], [FullImage], [ThumbImage], [EngineBrand], [Price], [SalePrice]) VALUES (@id, @Title, @Model, @idMfg, @FullImage, @ThumbImage, @EngineBrand, @Price, @SalePrice)" SelectCommand="SELECT * FROM [Merchandise] WHERE ([id] = @id)" UpdateCommand="UPDATE [Merchandise] SET [Title] = @Title, [Model] = @Model, [idMfg] = @idMfg, [FullImage] = @FullImage, [ThumbImage] = @ThumbImage, [EngineBrand] = @EngineBrand, [Price] = @Price, [SalePrice] = @SalePrice WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Model" Type="String" />
            <asp:Parameter Name="idMfg" Type="Int32" />
            <asp:Parameter Name="FullImage" Type="String" />
            <asp:Parameter Name="ThumbImage" Type="String" />
            <asp:Parameter Name="EngineBrand" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="SalePrice" Type="Decimal" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Model" Type="String" />
            <asp:Parameter Name="idMfg" Type="Int32" />
            <asp:Parameter Name="FullImage" Type="String" />
            <asp:Parameter Name="ThumbImage" Type="String" />
            <asp:Parameter Name="EngineBrand" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="SalePrice" Type="Decimal" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApexLawnConnection %>" DeleteCommand="DELETE FROM [Merchandise] WHERE [id] = @id" InsertCommand="INSERT INTO [Merchandise] ([id], [Title]) VALUES (@id, @Title)" SelectCommand="SELECT [id], [Title] FROM [Merchandise]" UpdateCommand="UPDATE [Merchandise] SET [Title] = @Title WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="Title" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>

