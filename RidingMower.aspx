<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="RidingMower.aspx.cs" Inherits="RidingMower" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="formPlaceHolder" Runat="Server">
    <h3>Riding Mower Maintenance Page</h3>
    <br />
    
    
      <asp:GridView ID="RidingGridView" cssClass="leftgrid" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="id">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
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
    <asp:DetailsView ID="DetailsView1" cssClass="grid" runat ="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource2" Height="50px" Width="125px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
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
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            <asp:BoundField DataField="Engine" HeaderText="Engine" SortExpression="Engine" />
            <asp:BoundField DataField="Transmission" HeaderText="Transmission" SortExpression="Transmission" />
            <asp:BoundField DataField="BladeEngagement" HeaderText="BladeEngagement" SortExpression="BladeEngagement" />
            <asp:BoundField DataField="FuelCap" HeaderText="FuelCap" SortExpression="FuelCap" />
            <asp:BoundField DataField="Warranty" HeaderText="Warranty" SortExpression="Warranty" />
            <asp:CheckBoxField DataField="Cruise" HeaderText="Cruise" SortExpression="Cruise" />
            <asp:BoundField DataField="OilFilter" HeaderText="OilFilter" SortExpression="OilFilter" />
            <asp:BoundField DataField="EngineHP" HeaderText="EngineHP" SortExpression="EngineHP" />
            <asp:BoundField DataField="FrontAxle" HeaderText="FrontAxle" SortExpression="FrontAxle" />
            <asp:BoundField DataField="Seat" HeaderText="Seat" SortExpression="Seat" />
            <asp:BoundField DataField="Turning" HeaderText="Turning" SortExpression="Turning" />
            <asp:BoundField DataField="AntiScalpWheels" HeaderText="AntiScalpWheels" SortExpression="AntiScalpWheels" />
            <asp:CheckBoxField DataField="Bagger" HeaderText="Bagger" SortExpression="Bagger" />
            <asp:CheckBoxField DataField="Mulching" HeaderText="Mulching" SortExpression="Mulching" />
            <asp:BoundField DataField="Displacement" HeaderText="Displacement" SortExpression="Displacement" />
            <asp:BoundField DataField="MaxSpeed" HeaderText="MaxSpeed" SortExpression="MaxSpeed" />
            <asp:BoundField DataField="MaxReverse" HeaderText="MaxReverse" SortExpression="MaxReverse" />
            <asp:CheckBoxField DataField="AdjSeat" HeaderText="AdjSeat" SortExpression="AdjSeat" />
            <asp:BoundField DataField="Discharge" HeaderText="Discharge" SortExpression="Discharge" />
            <asp:CheckBoxField DataField="Headlights" HeaderText="Headlights" SortExpression="Headlights" />
            <asp:BoundField DataField="Length" HeaderText="Length" SortExpression="Length" />
            <asp:BoundField DataField="Width" HeaderText="Width" SortExpression="Width" />
            <asp:BoundField DataField="OilCap" HeaderText="OilCap" SortExpression="OilCap" />
            <asp:BoundField DataField="Steering" HeaderText="Steering" SortExpression="Steering" />
            <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
            <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
            <asp:CheckBoxField DataField="ULListing" HeaderText="ULListing" SortExpression="ULListing" />
            <asp:BoundField DataField="TerrainType" HeaderText="TerrainType" SortExpression="TerrainType" />
            <asp:BoundField DataField="CutWidth" HeaderText="CutWidth" SortExpression="CutWidth" />
            <asp:BoundField DataField="Blades" HeaderText="Blades" SortExpression="Blades" />
            <asp:BoundField DataField="EngineBrand" HeaderText="EngineBrand" SortExpression="EngineBrand" />
        </Fields>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ApexLawnConnection %>" DeleteCommand="DELETE FROM [RidingMowers] WHERE [id] = @id" InsertCommand="INSERT INTO [RidingMowers] ([Title], [FullImage], [ThumbImage], [Model], [idMfg], [Price], [Type], [Engine], [Transmission], [BladeEngagement], [FuelCap], [Warranty], [Cruise], [OilFilter], [EngineHP], [FrontAxle], [Seat], [Turning], [AntiScalpWheels], [Bagger], [Mulching], [Displacement], [MaxSpeed], [MaxReverse], [AdjSeat], [Discharge], [Headlights], [Length], [Width], [OilCap], [Steering], [Weight], [Color], [ULListing], [TerrainType], [CutWidth], [Blades], [EngineBrand]) VALUES (@Title, @FullImage, @ThumbImage, @Model, @idMfg, @Price, @Type, @Engine, @Transmission, @BladeEngagement, @FuelCap, @Warranty, @Cruise, @OilFilter, @EngineHP, @FrontAxle, @Seat, @Turning, @AntiScalpWheels, @Bagger, @Mulching, @Displacement, @MaxSpeed, @MaxReverse, @AdjSeat, @Discharge, @Headlights, @Length, @Width, @OilCap, @Steering, @Weight, @Color, @ULListing, @TerrainType, @CutWidth, @Blades, @EngineBrand)" SelectCommand="SELECT * FROM [RidingMowers] WHERE ([id] = @id)" UpdateCommand="UPDATE [RidingMowers] SET [Title] = @Title, [FullImage] = @FullImage, [ThumbImage] = @ThumbImage, [Model] = @Model, [idMfg] = @idMfg, [Price] = @Price, [Type] = @Type, [Engine] = @Engine, [Transmission] = @Transmission, [BladeEngagement] = @BladeEngagement, [FuelCap] = @FuelCap, [Warranty] = @Warranty, [Cruise] = @Cruise, [OilFilter] = @OilFilter, [EngineHP] = @EngineHP, [FrontAxle] = @FrontAxle, [Seat] = @Seat, [Turning] = @Turning, [AntiScalpWheels] = @AntiScalpWheels, [Bagger] = @Bagger, [Mulching] = @Mulching, [Displacement] = @Displacement, [MaxSpeed] = @MaxSpeed, [MaxReverse] = @MaxReverse, [AdjSeat] = @AdjSeat, [Discharge] = @Discharge, [Headlights] = @Headlights, [Length] = @Length, [Width] = @Width, [OilCap] = @OilCap, [Steering] = @Steering, [Weight] = @Weight, [Color] = @Color, [ULListing] = @ULListing, [TerrainType] = @TerrainType, [CutWidth] = @CutWidth, [Blades] = @Blades, [EngineBrand] = @EngineBrand WHERE [id] = @id">
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
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Engine" Type="String" />
            <asp:Parameter Name="Transmission" Type="String" />
            <asp:Parameter Name="BladeEngagement" Type="String" />
            <asp:Parameter Name="FuelCap" Type="Double" />
            <asp:Parameter Name="Warranty" Type="Double" />
            <asp:Parameter Name="Cruise" Type="Boolean" />
            <asp:Parameter Name="OilFilter" Type="String" />
            <asp:Parameter Name="EngineHP" Type="Double" />
            <asp:Parameter Name="FrontAxle" Type="String" />
            <asp:Parameter Name="Seat" Type="String" />
            <asp:Parameter Name="Turning" Type="Int32" />
            <asp:Parameter Name="AntiScalpWheels" Type="Int32" />
            <asp:Parameter Name="Bagger" Type="Boolean" />
            <asp:Parameter Name="Mulching" Type="Boolean" />
            <asp:Parameter Name="Displacement" Type="Int32" />
            <asp:Parameter Name="MaxSpeed" Type="Double" />
            <asp:Parameter Name="MaxReverse" Type="Double" />
            <asp:Parameter Name="AdjSeat" Type="Boolean" />
            <asp:Parameter Name="Discharge" Type="String" />
            <asp:Parameter Name="Headlights" Type="Boolean" />
            <asp:Parameter Name="Length" Type="Double" />
            <asp:Parameter Name="Width" Type="Double" />
            <asp:Parameter Name="OilCap" Type="Double" />
            <asp:Parameter Name="Steering" Type="String" />
            <asp:Parameter Name="Weight" Type="Int32" />
            <asp:Parameter Name="Color" Type="String" />
            <asp:Parameter Name="ULListing" Type="Boolean" />
            <asp:Parameter Name="TerrainType" Type="String" />
            <asp:Parameter Name="CutWidth" Type="Int32" />
            <asp:Parameter Name="Blades" Type="Int32" />
            <asp:Parameter Name="EngineBrand" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="RidingGridView" Name="id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="FullImage" Type="String" />
            <asp:Parameter Name="ThumbImage" Type="String" />
            <asp:Parameter Name="Model" Type="String" />
            <asp:Parameter Name="idMfg" Type="Int32" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Engine" Type="String" />
            <asp:Parameter Name="Transmission" Type="String" />
            <asp:Parameter Name="BladeEngagement" Type="String" />
            <asp:Parameter Name="FuelCap" Type="Double" />
            <asp:Parameter Name="Warranty" Type="Double" />
            <asp:Parameter Name="Cruise" Type="Boolean" />
            <asp:Parameter Name="OilFilter" Type="String" />
            <asp:Parameter Name="EngineHP" Type="Double" />
            <asp:Parameter Name="FrontAxle" Type="String" />
            <asp:Parameter Name="Seat" Type="String" />
            <asp:Parameter Name="Turning" Type="Int32" />
            <asp:Parameter Name="AntiScalpWheels" Type="Int32" />
            <asp:Parameter Name="Bagger" Type="Boolean" />
            <asp:Parameter Name="Mulching" Type="Boolean" />
            <asp:Parameter Name="Displacement" Type="Int32" />
            <asp:Parameter Name="MaxSpeed" Type="Double" />
            <asp:Parameter Name="MaxReverse" Type="Double" />
            <asp:Parameter Name="AdjSeat" Type="Boolean" />
            <asp:Parameter Name="Discharge" Type="String" />
            <asp:Parameter Name="Headlights" Type="Boolean" />
            <asp:Parameter Name="Length" Type="Double" />
            <asp:Parameter Name="Width" Type="Double" />
            <asp:Parameter Name="OilCap" Type="Double" />
            <asp:Parameter Name="Steering" Type="String" />
            <asp:Parameter Name="Weight" Type="Int32" />
            <asp:Parameter Name="Color" Type="String" />
            <asp:Parameter Name="ULListing" Type="Boolean" />
            <asp:Parameter Name="TerrainType" Type="String" />
            <asp:Parameter Name="CutWidth" Type="Int32" />
            <asp:Parameter Name="Blades" Type="Int32" />
            <asp:Parameter Name="EngineBrand" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApexLawnConnection %>" SelectCommand="SELECT [id], [Title] FROM [RidingMowers]"></asp:SqlDataSource>
</asp:Content>

