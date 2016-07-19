<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Site.Master" AutoEventWireup="true" CodeBehind="CustomerAdminDetails.aspx.cs" Inherits="Assignment_3.Management.CustomerAdminDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="UserID" DataValueField="UserID">
        <asp:ListItem  Value="">Select UserId</asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Assignment 3ConnectionString1 %>" SelectCommand="SELECT [UserID], [UserName] FROM [User2] ORDER BY [UserID]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Assignment 3ConnectionString1 %>" SelectCommand="SELECT * FROM [User2] WHERE ([UserID] = @UserID) ORDER BY [UserID]">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="UserID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Assignment 3ConnectionString1 %>" DeleteCommand="DELETE FROM [User1] WHERE [UserID] = @UserID" InsertCommand="INSERT INTO [User1] ([UserID], [UserName], [EmailAddress]) VALUES (@UserID, @UserName, @EmailAddress)" SelectCommand="SELECT * FROM [User1]" UpdateCommand="UPDATE [User1] SET [UserName] = @UserName, [EmailAddress] = @EmailAddress WHERE [UserID] = @UserID">
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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." PageSize="50">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
            <asp:CheckBoxField DataField="IsAdmin" HeaderText="IsAdmin" SortExpression="IsAdmin" />
            <asp:BoundField DataField="DateCreated" HeaderText="DateCreated" SortExpression="DateCreated" />
            <asp:BoundField DataField="CreatedBy" HeaderText="CreatedBy" SortExpression="CreatedBy" />
            <asp:BoundField DataField="DateModified" HeaderText="DateModified" SortExpression="DateModified" />
            <asp:BoundField DataField="ModifiedBy" HeaderText="ModifiedBy" SortExpression="ModifiedBy" />
        </Columns>
    </asp:GridView>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="UserID" DataSourceID="SqlDataSource3" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="AddressID" DataSourceID="SqlDataSource4" EmptyDataText="There are no data records to display." PageSize="50">
        <Columns>
            <asp:BoundField DataField="AddressID" HeaderText="AddressID" ReadOnly="True" SortExpression="AddressID" />
            <asp:BoundField DataField="Address1" HeaderText="Address1" SortExpression="Address1" />
            <asp:BoundField DataField="Address2" HeaderText="Address2" SortExpression="Address2" />
            <asp:BoundField DataField="Address3" HeaderText="Address3" SortExpression="Address3" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="StateID" HeaderText="StateID" SortExpression="StateID" />
            <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Assignment 3ConnectionString1 %>" DeleteCommand="DELETE FROM [Address] WHERE [AddressID] = @AddressID" InsertCommand="INSERT INTO [Address] ([AddressID], [Address1], [Address2], [Address3], [City], [StateID], [ZipCode]) VALUES (@AddressID, @Address1, @Address2, @Address3, @City, @StateID, @ZipCode)" SelectCommand="SELECT [AddressID], [Address1], [Address2], [Address3], [City], [StateID], [ZipCode] FROM [Address]" UpdateCommand="UPDATE [Address] SET [Address1] = @Address1, [Address2] = @Address2, [Address3] = @Address3, [City] = @City, [StateID] = @StateID, [ZipCode] = @ZipCode WHERE [AddressID] = @AddressID">
        <DeleteParameters>
            <asp:Parameter Name="AddressID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="AddressID" Type="Int32" />
            <asp:Parameter Name="Address1" Type="String" />
            <asp:Parameter Name="Address2" Type="String" />
            <asp:Parameter Name="Address3" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="StateID" Type="Int32" />
            <asp:Parameter Name="ZipCode" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Address1" Type="String" />
            <asp:Parameter Name="Address2" Type="String" />
            <asp:Parameter Name="Address3" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="StateID" Type="Int32" />
            <asp:Parameter Name="ZipCode" Type="String" />
            <asp:Parameter Name="AddressID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
