<%@ Page Title="" Language="C#" MasterPageFile="~/Store/MasterPageDesigner.master" AutoEventWireup="true" CodeFile="ProfileD.aspx.cs" Inherits="Designer_ProfileD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><center>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" Text="Store Details"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="DesignerID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" HorizontalAlign="Center" Width="307px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="DesignerID" HeaderText="Store ID" InsertVisible="False" ReadOnly="True" SortExpression="DesignerID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="LoginID" HeaderText="LoginID" SortExpression="LoginID" ReadOnly="True" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="EmailID" HeaderText="EmailID" SortExpression="EmailID" />
            <%--<asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />--%>
            <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="PIN" HeaderText="PIN" SortExpression="PIN" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="ROLE" HeaderText="ROLE" SortExpression="ROLE" Visible="False" />
            <asp:BoundField DataField="eligible" HeaderText="eligible" SortExpression="eligible" Visible="False" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionDB %>" DeleteCommand="DELETE FROM [tblDesignerDetails] WHERE [DesignerID] = @DesignerID" InsertCommand="INSERT INTO [tblDesignerDetails] ([Name], [LoginID], [Password], [EmailID], [Gender], [Contact], [Address], [City], [PIN], [State], [ROLE], [eligible]) VALUES (@Name, @LoginID, @Password, @EmailID, @Gender, @Contact, @Address, @City, @PIN, @State, @ROLE, @eligible)" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [tblDesignerDetails] WHERE ([LoginID] = @LoginID)" UpdateCommand="UPDATE [tblDesignerDetails] SET [Name] = @Name, [Password] = @Password, [EmailID] = @EmailID, [Gender] = @Gender, [Contact] = @Contact, [Address] = @Address, [City] = @City, [PIN] = @PIN, [State] = @State WHERE [DesignerID] = @DesignerID
UPDATE [tbllogin] SET [LoginID] = @LoginID, [Password] = @Password WHERE ([LoginID] = @LoginID)">
        <DeleteParameters>
            <asp:Parameter Name="DesignerID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="LoginID" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="EmailID" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Contact" Type="Int64" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="PIN" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="ROLE" Type="Int32" />
            <asp:Parameter Name="eligible" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="LoginID" SessionField="designer" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="EmailID" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Contact" Type="Int64" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="PIN" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="DesignerID" Type="Int32" />
            <asp:Parameter Name="LoginID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource></center>
</asp:Content>

