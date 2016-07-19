<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Site.Master" AutoEventWireup="true" CodeBehind="CustomersAdmin.aspx.cs" Inherits="Assignment_3.Management.CustomersAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowPaging="True" AllowSorting="True" PageSize="50">
    <Columns>
        <asp:CommandField ShowEditButton="True" />
        <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
        <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Assignment 3ConnectionString1 %>" 
    DeleteCommand="DELETE FROM [User1] WHERE [UserID] = @UserID" 
    InsertCommand="INSERT INTO [User1] ([UserID], [UserName], [EmailAddress]) VALUES (@UserID, @UserName, @EmailAddress)" 
    ProviderName="<%$ ConnectionStrings:Assignment 3ConnectionString1.ProviderName %>" 
    SelectCommand="SELECT [UserID], [UserName], [EmailAddress] FROM [User1]" 
    UpdateCommand="UPDATE [User1] SET [UserName] = @UserName, [EmailAddress] = @EmailAddress WHERE [UserID] = @UserID" OnSelecting="SqlDataSource1_Selecting">
    <DeleteParameters>
        <asp:Parameter Name="UserID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="UserID" Type="Int32" />
        <asp:Parameter Name="UserName" Type="String" />
        <asp:Parameter Name="EmailAddress" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="UserName" Type="String" />
        <asp:Parameter Name="EmailAddress" Type="String" />
        <asp:Parameter Name="UserID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="UserID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</asp:Content>
