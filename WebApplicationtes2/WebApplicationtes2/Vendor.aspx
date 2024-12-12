<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Vendor.aspx.cs" Inherits="WebApplicationtes2.Vendor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Master Vendor</h2>
    <div>
        <asp:Label ID="Label1" runat="server" Text="Vendor Name"></asp:Label>
        <asp:TextBox ID="txtVendorName" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="Label2" runat="server" Text="Vendor Status"></asp:Label>
        <asp:TextBox ID="txtVendorStatus" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Button ID="Btn_Save" runat="server" Text="Save" OnClick="Btn_Save_Click"/>
    </div>
    <div>

        <asp:GridView ID="GridViewVendor" runat="server" AutoGenerateColumns="False" DataKeyNames="IdVendor" DataSourceID="EntityDataVendor" EnableViewState="true">
            <Columns>
                <asp:BoundField DataField="IdVendor" HeaderText="IdVendor" ReadOnly="True" SortExpression="IdVendor" />
                <asp:BoundField DataField="VendorName" HeaderText="VendorName" SortExpression="VendorName" />
                <asp:BoundField DataField="StatusVendor" HeaderText="StatusVendor" SortExpression="StatusVendor" />
                <asp:CommandField ShowEditButton="true" />
                <asp:CommandField ShowDeleteButton="true" />
            </Columns>
        </asp:GridView>
        <asp:EntityDataSource ID="EntityDataVendor" runat="server" ConnectionString="name=StoreEntities" DefaultContainerName="StoreEntities" EnableFlattening="False" EntitySetName="tbl_Vendor" EntityTypeFilter="tbl_Vendor" EnableUpdate="true" EnableDelete="true">
        </asp:EntityDataSource>

    </div>
</asp:Content>
