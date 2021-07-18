<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="ManageCustomers.aspx.cs" Inherits="Admin_ManageCompanies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server"><center>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="lbluserName" runat="server"></asp:Label>
&nbsp;<h1><strong style="font-size: xx-large; font-family: 'Berlin Sans FB'">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; List of Registered Customers is as follows</strong></h1>
      
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CompanyID" DataSourceID="SqlDataSource1" Height="316px" Width="1001px" HorizontalAlign="Center">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="CompanyID" HeaderText="Customer ID" ReadOnly="True" SortExpression="CompanyID" />
                            <asp:BoundField DataField="CompanyName" HeaderText="Name" SortExpression="CompanyName" />
                            <asp:BoundField DataField="LoginID" HeaderText="LoginID" SortExpression="LoginID" />
                            <%--<asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />--%>
                            <asp:BoundField DataField="CompanyAddress" HeaderText="Address" SortExpression="CompanyAddress" />
                            <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                            <asp:BoundField DataField="EmailID" HeaderText="EmailID" SortExpression="EmailID" />
                            <%--<asp:BoundField DataField="FaxNo" HeaderText="FaxNo" SortExpression="FaxNo" />--%>
                            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                            <asp:BoundField DataField="PIN" HeaderText="PIN" SortExpression="PIN" />
                            <asp:BoundField DataField="ROLE" HeaderText="ROLE" SortExpression="ROLE" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionDB %>" DeleteCommand="DELETE FROM [tblCompanyDetails] WHERE [CompanyID] = @CompanyID" InsertCommand="INSERT INTO [tblCompanyDetails] ([CompanyID], [CompanyName], [LoginID], [Password], [CompanyAddress], [Contact], [EmailID], [FaxNo], [Country], [State], [PIN], [ROLE]) VALUES (@CompanyID, @CompanyName, @LoginID, @Password, @CompanyAddress, @Contact, @EmailID, @FaxNo, @Country, @State, @PIN, @ROLE)" SelectCommand="SELECT * FROM [tblCompanyDetails]" UpdateCommand="UPDATE [tblCompanyDetails] SET [CompanyName] = @CompanyName, [LoginID] = @LoginID, [Password] = @Password, [CompanyAddress] = @CompanyAddress, [Contact] = @Contact, [EmailID] = @EmailID, [FaxNo] = @FaxNo, [Country] = @Country, [State] = @State, [PIN] = @PIN, [ROLE] = @ROLE WHERE [CompanyID] = @CompanyID">
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
                        <UpdateParameters>
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
                            <asp:Parameter Name="CompanyID" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
        <br />
        
        <br />
        <br />
        <br />
        <br />
       </center>
</asp:Content>
