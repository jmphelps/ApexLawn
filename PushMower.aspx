<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="PushMower.aspx.cs" Inherits="PushMower" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="formPlaceHolder" Runat="Server">
    <h3>Push Mower Maintenance Page</h3>
    <br />
            <asp:GridView ID="GridView1" cssClass="leftgrid" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApexLawnConnection %>" SelectCommand="SELECT [id], [Title] FROM [Mowers]"></asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" cssClass="grid" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource2" GridLines="Vertical" ForeColor="Black">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" ButtonType="Button" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="FullImage" HeaderText="FullImage" SortExpression="FullImage" />
            <asp:BoundField DataField="ThumbImage" HeaderText="ThumbImage" SortExpression="ThumbImage" />
            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
            <asp:BoundField DataField="idMfg" HeaderText="idMfg" SortExpression="idMfg" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="EngineBrand" HeaderText="EngineBrand" SortExpression="EngineBrand" />
            <asp:BoundField DataField="Mulching" HeaderText="Mulching" SortExpression="Mulching" />
            <asp:BoundField DataField="FrontWheelSize" HeaderText="FrontWheelSize" SortExpression="FrontWheelSize" />
            <asp:BoundField DataField="RearWheelSize" HeaderText="RearWheelSize" SortExpression="RearWheelSize" />
            <asp:BoundField DataField="HeightAdj" HeaderText="HeightAdj" SortExpression="HeightAdj" />
            <asp:BoundField DataField="Handle" HeaderText="Handle" SortExpression="Handle" />
            <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
            <asp:BoundField DataField="Warranty" HeaderText="Warranty" SortExpression="Warranty" />
            <asp:BoundField DataField="Torque" HeaderText="Torque" SortExpression="Torque" />
            <asp:BoundField DataField="ULListing" HeaderText="ULListing" SortExpression="ULListing" />
            <asp:BoundField DataField="Displacement" HeaderText="Displacement" SortExpression="Displacement" />
            <asp:BoundField DataField="CutWidth" HeaderText="CutWidth" SortExpression="CutWidth" />
            <asp:BoundField DataField="DeckCapability" HeaderText="DeckCapability" SortExpression="DeckCapability" />
            <asp:BoundField DataField="Transmission" HeaderText="Transmission" SortExpression="Transmission" />
            <asp:BoundField DataField="StartType" HeaderText="StartType" SortExpression="StartType" />
            <asp:BoundField DataField="DriveType" HeaderText="DriveType" SortExpression="DriveType" />
            <asp:BoundField DataField="SpeedControl" HeaderText="SpeedControl" SortExpression="SpeedControl" />
        </Fields>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
            </asp:DetailsView>
   

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ApexLawnConnection %>" DeleteCommand="DELETE FROM [Mowers] WHERE [id] = @id" InsertCommand="INSERT INTO [Mowers] ([Title], [FullImage], [ThumbImage], [Model], [idMfg], [Price], [EngineBrand], [Mulching], [FrontWheelSize], [RearWheelSize], [HeightAdj], [Handle], [Color], [Warranty], [Torque], [ULListing], [Displacement], [CutWidth], [DeckCapability], [Transmission], [StartType], [DriveType], [SpeedControl]) VALUES (@Title, @FullImage, @ThumbImage, @Model, @idMfg, @Price, @EngineBrand, @Mulching, @FrontWheelSize, @RearWheelSize, @HeightAdj, @Handle, @Color, @Warranty, @Torque, @ULListing, @Displacement, @CutWidth, @DeckCapability, @Transmission, @StartType, @DriveType, @SpeedControl)" SelectCommand="SELECT * FROM [Mowers] WHERE ([id] = @id)" UpdateCommand="UPDATE [Mowers] SET [Title] = @Title, [FullImage] = @FullImage, [ThumbImage] = @ThumbImage, [Model] = @Model, [idMfg] = @idMfg, [Price] = @Price, [EngineBrand] = @EngineBrand, [Mulching] = @Mulching, [FrontWheelSize] = @FrontWheelSize, [RearWheelSize] = @RearWheelSize, [HeightAdj] = @HeightAdj, [Handle] = @Handle, [Color] = @Color, [Warranty] = @Warranty, [Torque] = @Torque, [ULListing] = @ULListing, [Displacement] = @Displacement, [CutWidth] = @CutWidth, [DeckCapability] = @DeckCapability, [Transmission] = @Transmission, [StartType] = @StartType, [DriveType] = @DriveType, [SpeedControl] = @SpeedControl WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="FullImage" Type="String" />
                    <asp:Parameter Name="ThumbImage" Type="String" />
                    <asp:Parameter Name="Model" Type="String" />
                    <asp:Parameter Name="idMfg" Type="Int32" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                    <asp:Parameter Name="EngineBrand" Type="String" />
                    <asp:Parameter Name="Mulching" Type="String" />
                    <asp:Parameter Name="FrontWheelSize" Type="Int32" />
                    <asp:Parameter Name="RearWheelSize" Type="Int32" />
                    <asp:Parameter Name="HeightAdj" Type="String" />
                    <asp:Parameter Name="Handle" Type="String" />
                    <asp:Parameter Name="Color" Type="String" />
                    <asp:Parameter Name="Warranty" Type="Int32" />
                    <asp:Parameter Name="Torque" Type="Double" />
                    <asp:Parameter Name="ULListing" Type="String" />
                    <asp:Parameter Name="Displacement" Type="Int32" />
                    <asp:Parameter Name="CutWidth" Type="Int32" />
                    <asp:Parameter Name="DeckCapability" Type="String" />
                    <asp:Parameter Name="Transmission" Type="String" />
                    <asp:Parameter Name="StartType" Type="String" />
                    <asp:Parameter Name="DriveType" Type="String" />
                    <asp:Parameter Name="SpeedControl" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" DefaultValue="" Name="id" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="FullImage" Type="String" />
                    <asp:Parameter Name="ThumbImage" Type="String" />
                    <asp:Parameter Name="Model" Type="String" />
                    <asp:Parameter Name="idMfg" Type="Int32" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                    <asp:Parameter Name="EngineBrand" Type="String" />
                    <asp:Parameter Name="Mulching" Type="String" />
                    <asp:Parameter Name="FrontWheelSize" Type="Int32" />
                    <asp:Parameter Name="RearWheelSize" Type="Int32" />
                    <asp:Parameter Name="HeightAdj" Type="String" />
                    <asp:Parameter Name="Handle" Type="String" />
                    <asp:Parameter Name="Color" Type="String" />
                    <asp:Parameter Name="Warranty" Type="Int32" />
                    <asp:Parameter Name="Torque" Type="Double" />
                    <asp:Parameter Name="ULListing" Type="String" />
                    <asp:Parameter Name="Displacement" Type="Int32" />
                    <asp:Parameter Name="CutWidth" Type="Int32" />
                    <asp:Parameter Name="DeckCapability" Type="String" />
                    <asp:Parameter Name="Transmission" Type="String" />
                    <asp:Parameter Name="StartType" Type="String" />
                    <asp:Parameter Name="DriveType" Type="String" />
                    <asp:Parameter Name="SpeedControl" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
   

</asp:Content>

