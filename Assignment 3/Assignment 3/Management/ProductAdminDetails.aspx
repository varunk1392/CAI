<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Site.Master" AutoEventWireup="true" CodeBehind="ProductAdminDetails.aspx.cs" Inherits="Assignment_3.Management.ProductAdminDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="ProductID" DataValueField="ProductID">
        <asp:ListItem>Select a ProductID</asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Assignment 3ConnectionString1 %>" SelectCommand="SELECT [ProductID], [ProductName], [Description], [IsPublished], [Price] FROM [Product] ORDER BY [ProductID]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Assignment 3ConnectionString1 %>" DeleteCommand="DELETE FROM [Product] WHERE [ProductID] = @ProductID" InsertCommand="INSERT INTO [Product] ([ProductID], [ProductName], [Description], [IsPublished], [Price]) VALUES (@ProductID, @ProductName, @Description, @IsPublished, @Price)" SelectCommand="SELECT [ProductID], [ProductName], [Description], [IsPublished], [Price] FROM [Product] WHERE ([ProductID] = @ProductID) ORDER BY [ProductID]" UpdateCommand="UPDATE [Product] SET [ProductName] = @ProductName, [Description] = @Description, [IsPublished] = @IsPublished, [Price] = @Price WHERE [ProductID] = @ProductID">
        <DeleteParameters>
            <asp:Parameter Name="ProductID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductID" Type="Int32" />
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="IsPublished" Type="Boolean" />
            <asp:Parameter Name="Price" Type="Decimal" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="ProductID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="IsPublished" Type="Boolean" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="ProductID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:CheckBoxField DataField="IsPublished" HeaderText="IsPublished" SortExpression="IsPublished" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        </Columns>
    </asp:GridView>
</asp:Content>
