<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/MasterPageCustomer.master" AutoEventWireup="true" CodeFile="ProfileC.aspx.cs" Inherits="Customer_ProfileC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><center>
    <br />
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" Text="Customer Details"></asp:Label>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="325px" AutoGenerateRows="False" CellPadding="4" DataKeyNames="CompanyID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <%--<asp:BoundField DataField="CompanyID" HeaderText="CompanyID" ReadOnly="True" SortExpression="CompanyID" />--%>
            <asp:BoundField DataField="CompanyName" HeaderText="Name" SortExpression="CompanyName" />
            <asp:BoundField DataField="LoginID" HeaderText="Login ID" SortExpression="LoginID" ReadOnly="True" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="CompanyAddress" HeaderText="CompanyAddress" SortExpression="CompanyAddress" />
            <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
            <asp:BoundField DataField="EmailID" HeaderText="EmailID" SortExpression="EmailID" />
            <%--<asp:BoundField DataField="FaxNo" HeaderText="FaxNo" SortExpression="FaxNo" />--%>
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="PIN" HeaderText="PIN" SortExpression="PIN" />
            <asp:BoundField DataField="ROLE" HeaderText="ROLE" SortExpression="ROLE" Visible="False" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionDB %>" DeleteCommand="DELETE FROM [tblCompanyDetails] WHERE [CompanyID] = @CompanyID" InsertCommand="INSERT INTO [tblCompanyDetails] ([CompanyID], [CompanyName], [LoginID], [Password], [CompanyAddress], [Contact], [EmailID], [FaxNo], [Country], [State], [PIN], [ROLE]) VALUES (@CompanyID, @CompanyName, @LoginID, @Password, @CompanyAddress, @Contact, @EmailID, @FaxNo, @Country, @State, @PIN, @ROLE)" SelectCommand="SELECT * FROM [tblCompanyDetails] WHERE ([LoginID] = @LoginID)" UpdateCommand="UPDATE [tblCompanyDetails] SET [CompanyName] = @CompanyName, [Password] = @Password, [CompanyAddress] = @CompanyAddress, [Contact] = @Contact, [EmailID] = @EmailID, [FaxNo] = @FaxNo, [Country] = @Country, [State] = @State, [PIN] = @PIN WHERE [CompanyID] = @CompanyID
UPDATE [tbllogin] SET [LoginID] = @LoginID, [Password] = @Password WHERE ([LoginID] = @LoginID)">
        <DeleteParameters>
            <asp:Parameter Name="CompanyID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CompanyID" Type="String" />
            <asp:Parameter Name="CompanyName" Type="String" />
            <asp:Parameter Name="LoginID" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="CompanyAddress" Type="String" />
            <asp:Parameter Name="Contact" Type="Int64" />
            <asp:Parameter Name="EmailID" Type="String" />
            <asp:Parameter Name="FaxNo" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="PIN" Type="Int32" />
            <asp:Parameter Name="ROLE" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="LoginID" SessionField="customer" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="CompanyName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="CompanyAddress" Type="String" />
            <asp:Parameter Name="Contact" Type="Int64" />
            <asp:Parameter Name="EmailID" Type="String" />
            <asp:Parameter Name="FaxNo" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="PIN" Type="Int32" />
            <asp:Parameter Name="CompanyID" Type="String" />
            <asp:Parameter Name="LoginID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</center>
</asp:Content>

