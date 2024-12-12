<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebFormProduct.aspx.cs" Inherits="WebApplicationtes2.WebFormProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Master Product</h2>
    <div>
        <asp:Label ID="Label1" runat="server" Text="Product Name"></asp:Label>
        <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:DropDownList ID="DDLVendor" runat="server" DataSourceID="EntityDataProduct" DataTextField="IdVendor" DataValueField="IdVendor">
            <asp:ListItem Text="Select Vendor"></asp:ListItem>
        </asp:DropDownList>
        <asp:EntityDataSource ID="EntityDataProduct" runat="server" ConnectionString="name=StoreEntities" DefaultContainerName="StoreEntities" EnableFlattening="False" EntitySetName="tbl_Vendor" Select="it.[IdVendor]">
        </asp:EntityDataSource>
    </div>
    <div>
        <asp:Label ID="Label2" runat="server" Text="Product Stok"></asp:Label>
        <asp:TextBox ID="txtStokProduct" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="Label3" runat="server" Text="Product Status"></asp:Label>
        <asp:TextBox ID="txtProductStatus" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Button ID="Btn_Save" runat="server" Text="Save" OnClick="Btn_Save_Click"/>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdProduct" DataSourceID="EntityDataProduct2">
            <Columns>
                <asp:BoundField DataField="IdProduct" HeaderText="IdProduct" ReadOnly="True" SortExpression="IdProduct" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="IdVendor" HeaderText="IdVendor" SortExpression="IdVendor" />
                <asp:BoundField DataField="Stok" HeaderText="Stok" SortExpression="Stok" />
                <asp:BoundField DataField="StatusProduct" HeaderText="StatusProduct" SortExpression="StatusProduct" />
                <asp:CommandField ShowEditButton="true" />
                <asp:CommandField ShowDeleteButton="true" />
            </Columns>
        </asp:GridView>
        <asp:EntityDataSource ID="EntityDataProduct2" runat="server" ConnectionString="name=StoreEntities" DefaultContainerName="StoreEntities" EnableFlattening="False" EntitySetName="tbl_Product" EnableUpdate="true" EnableDelete="true">
        </asp:EntityDataSource>
    </div>
</asp:Content>
