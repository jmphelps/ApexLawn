<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Catalog.aspx.cs" Inherits="Catalog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHolder" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="formPlaceHolder" runat="Server">

    <div>
        Mower Type<br />
        &nbsp;<asp:DropDownList ID="ddlType" runat="server" AutoPostBack="True" Height="16px" OnSelectedIndexChanged="ddlType_SelectedIndexChanged" Width="131px">
            <asp:ListItem Selected="True" Value="1">Mowers</asp:ListItem>
            <asp:ListItem Value="2">Riding Mowers</asp:ListItem>
        </asp:DropDownList>
         <br />
        <br />


        <asp:Panel ID="pnlMowers" runat="server">
            <asp:GridView ID="GridView1" cssClass="leftgrid" runat="server" AutoGenerateColumns="False" DataSourceID="sdsMowers" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="id" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                    <asp:TemplateField HeaderText="ThumbImage" SortExpression="ThumbImage">

                        <ItemTemplate>
                            <asp:Image ImageUrl='<%#"" + Eval("ThumbImage") %>' ID="ThumbImage" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Title" SortExpression="Title">

                        <ItemTemplate>
                            <asp:Label ID="Label1" width="100px" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" DataFormatString="{0:c}" />
                    <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="sdsMowers" runat="server" ConnectionString="<%$ ConnectionStrings:ApexLawnConnection %>" SelectCommand="SELECT [ThumbImage], [Title], [Price], [Model], [id] FROM [Mowers]"></asp:SqlDataSource>
        </asp:Panel>



        <asp:Panel ID="pnlRidingMowers" runat="server" Visible="False">
            <asp:GridView ID="GridView2" cssClass="leftgrid" runat="server" AutoGenerateColumns="False" DataSourceID="sdsRidingMowers" DataKeyNames="id" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                    <asp:TemplateField HeaderText="ThumbImage" SortExpression="ThumbImage">
                        <ItemTemplate>
                            <asp:Image ImageUrl='<%#"" + Eval("ThumbImage") %>' ID="ThumbImage" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Title" SortExpression="Title">
                        <ItemTemplate>
                            <asp:Label ID="Label1" width="100px" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" DataFormatString="{0:c}" />
                    <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="sdsRidingMowers" runat="server" ConnectionString="<%$ ConnectionStrings:ApexLawnConnection %>" SelectCommand="SELECT [ThumbImage], [Title], [Price], [Model], [id] FROM [RidingMowers]"></asp:SqlDataSource>
        </asp:Panel>


        <asp:Panel ID="Panel1" runat="server" Visible="true">
        <asp:DetailsView ID="DetailsView2" cssClass="grid" runat="server" 
            AutoGenerateRows="False" 
            DataKeyNames="id" 
            DataSourceID="SqlDataSource2" 
            Height="50px" 
            Width="125px" 
            BackColor="White" 
            BorderColor="#3366CC" 
            BorderStyle="None" 
            BorderWidth="3px" 
            CellPadding="4">
            <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <Fields>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="FullImage" HeaderText="FullImage" SortExpression="FullImage" Visible="False" />
                <asp:BoundField DataField="ThumbImage" HeaderText="ThumbImage" SortExpression="ThumbImage" Visible="False" />
                <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                <asp:BoundField DataField="idMfg" HeaderText="idMfg" SortExpression="idMfg" Visible="False" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" Visible="False" />
                <asp:BoundField DataField="EngineBrand" HeaderText="Engine Brand" SortExpression="EngineBrand" />
                <asp:BoundField DataField="Mulching" HeaderText="Mulching" SortExpression="Mulching" />
                <asp:BoundField DataField="FrontWheelSize" HeaderText="Front Wheel Size" SortExpression="FrontWheelSize" />
                <asp:BoundField DataField="RearWheelSize" HeaderText="Rear Wheel Size" SortExpression="RearWheelSize" />
                <asp:BoundField DataField="HeightAdj" HeaderText="Height Adj" SortExpression="HeightAdj" />
                <asp:BoundField DataField="Handle" HeaderText="Handle" SortExpression="Handle" />
                <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                <asp:BoundField DataField="Warranty" HeaderText="Warranty" SortExpression="Warranty" />
                <asp:BoundField DataField="Torque" HeaderText="Torque" SortExpression="Torque" />
                <asp:BoundField DataField="ULListing" HeaderText="UL Listing" SortExpression="ULListing" />
                <asp:BoundField DataField="Displacement" HeaderText="Displacement" SortExpression="Displacement" />
                <asp:BoundField DataField="CutWidth" HeaderText="Cut Width" SortExpression="CutWidth" />
                <asp:BoundField DataField="DeckCapability" HeaderText="Deck Capability" SortExpression="DeckCapability" />
                <asp:BoundField DataField="Transmission" HeaderText="Transmission" SortExpression="Transmission" />
                <asp:BoundField DataField="StartType" HeaderText="Start Type" SortExpression="StartType" />
                <asp:BoundField DataField="DriveType" HeaderText="Drive Type" SortExpression="DriveType" />
                <asp:BoundField DataField="SpeedControl" HeaderText="Speed Control" SortExpression="SpeedControl" />
            </Fields>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ApexLawnConnection %>" SelectCommand="SELECT * FROM [Mowers] WHERE ([id] = @id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
         </asp:Panel>


        <asp:Panel ID="Panel2" runat="server">
        <asp:DetailsView ID="DetailsView1" cssClass="grid" runat="server" 
            AutoGenerateRows="False" 
            DataKeyNames="id" 
            DataSourceID="SqlDataSource1" 
            Height="50px" 
            Width="125px" 
            BackColor="White" 
            BorderColor="#3366CC" 
            BorderStyle="None" 
            BorderWidth="1px" 
            CellPadding="4">
            <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <Fields>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="FullImage" HeaderText="FullImage" SortExpression="FullImage" Visible="False" />
                <asp:BoundField DataField="ThumbImage" HeaderText="ThumbImage" SortExpression="ThumbImage" Visible="False" />
                <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                <asp:BoundField DataField="idMfg" HeaderText="idMfg" SortExpression="idMfg" Visible="False" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" Visible="False" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                <asp:BoundField DataField="Engine" HeaderText="Engine" SortExpression="Engine" />
                <asp:BoundField DataField="Transmission" HeaderText="Transmission" SortExpression="Transmission" />
                <asp:BoundField DataField="BladeEngagement" HeaderText="Blade Engagement" SortExpression="BladeEngagement" />
                <asp:BoundField DataField="FuelCap" HeaderText="Fuel Cap" SortExpression="FuelCap" />
                <asp:BoundField DataField="Warranty" HeaderText="Warranty" SortExpression="Warranty" />
                <asp:CheckBoxField DataField="Cruise" HeaderText="Cruise" SortExpression="Cruise" />
                <asp:BoundField DataField="OilFilter" HeaderText="Oil Filter" SortExpression="OilFilter" />
                <asp:BoundField DataField="EngineHP" HeaderText="Engine HP" SortExpression="EngineHP" />
                <asp:BoundField DataField="FrontAxle" HeaderText="Front Axle" SortExpression="FrontAxle" />
                <asp:BoundField DataField="Seat" HeaderText="Seat" SortExpression="Seat" />
                <asp:BoundField DataField="Turning" HeaderText="Turning" SortExpression="Turning" />
                <asp:BoundField DataField="AntiScalpWheels" HeaderText="Anti Scalp Wheels" SortExpression="AntiScalpWheels" />
                <asp:CheckBoxField DataField="Bagger" HeaderText="Bagger" SortExpression="Bagger" />
                <asp:CheckBoxField DataField="Mulching" HeaderText="Mulching" SortExpression="Mulching" />
                <asp:BoundField DataField="Displacement" HeaderText="Displacement" SortExpression="Displacement" />
                <asp:BoundField DataField="MaxSpeed" HeaderText="Max Speed" SortExpression="MaxSpeed" />
                <asp:BoundField DataField="MaxReverse" HeaderText="Max Reverse" SortExpression="MaxReverse" />
                <asp:CheckBoxField DataField="AdjSeat" HeaderText="Adj Seat" SortExpression="AdjSeat" />
                <asp:BoundField DataField="Discharge" HeaderText="Discharge" SortExpression="Discharge" />
                <asp:CheckBoxField DataField="Headlights" HeaderText="Headlights" SortExpression="Headlights" />
                <asp:BoundField DataField="Length" HeaderText="Length" SortExpression="Length" />
                <asp:BoundField DataField="Width" HeaderText="Width" SortExpression="Width" />
                <asp:BoundField DataField="OilCap" HeaderText="OilCap" SortExpression="OilCap" />
                <asp:BoundField DataField="Steering" HeaderText="Steering" SortExpression="Steering" />
                <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                <asp:CheckBoxField DataField="ULListing" HeaderText="UL Listing" SortExpression="ULListing" />
                <asp:BoundField DataField="TerrainType" HeaderText="TerrainType" SortExpression="TerrainType" />
                <asp:BoundField DataField="CutWidth" HeaderText="Cut Width" SortExpression="CutWidth" />
                <asp:BoundField DataField="Blades" HeaderText="Blades" SortExpression="Blades" />
                <asp:BoundField DataField="EngineBrand" HeaderText="Engine Brand" SortExpression="EngineBrand" />
            </Fields>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApexLawnConnection %>" SelectCommand="SELECT * FROM [RidingMowers] WHERE ([id] = @id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView2" Name="id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
             </asp:Panel>




    </div>
</asp:Content>

