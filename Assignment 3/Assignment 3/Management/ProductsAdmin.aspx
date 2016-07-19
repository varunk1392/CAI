<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Site.Master" AutoEventWireup="true" CodeBehind="ProductsAdmin.aspx.cs" Inherits="Assignment_3.Management.ProductsAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." PageSize="50">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            <asp:CheckBoxField DataField="IsPublished" HeaderText="IsPublished" SortExpression="IsPublished" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Assignment 3ConnectionString1 %>" DeleteCommand="DELETE FROM [Product] WHERE [ProductID] = @ProductID" InsertCommand="INSERT INTO [Product] ([ProductID], [ProductName], [IsPublished], [Price]) VALUES (@ProductID, @ProductName, @IsPublished, @Price)" SelectCommand="SELECT [ProductID], [ProductName], [IsPublished], [Price] FROM [Product] ORDER BY [ProductID]" UpdateCommand="UPDATE [Product] SET [ProductName] = @ProductName, [IsPublished] = @IsPublished, [Price] = @Price WHERE [ProductID] = @ProductID">
        <DeleteParameters>
            <asp:Parameter Name="ProductID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductID" Type="Int32" />
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="IsPublished" Type="Boolean" />
            <asp:Parameter Name="Price" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="IsPublished" Type="Boolean" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="ProductID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            <asp:CheckBoxField DataField="IsPublished" HeaderText="IsPublished" SortExpression="IsPublished" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</asp:Content>
