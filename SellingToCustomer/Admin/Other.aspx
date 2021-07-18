<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="Other.aspx.cs" Inherits="Admin_OtherDesign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        <strong style="font-size: xx-large; font-family: 'Berlin Sans FB'">List of Items is as follows:</strong></p>
    <p>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="605px">
            <Columns>
                <asp:BoundField DataField="DesignID" HeaderText="StoreID" InsertVisible="False" ReadOnly="True" SortExpression="DesignID" />
                <asp:BoundField DataField="DesignCategory" HeaderText="Category" SortExpression="DesignCategory" />
                <asp:BoundField DataField="DesignerLoginID" HeaderText="StoreLoginID" SortExpression="DesignerLoginID" />
                <asp:BoundField DataField="DateOfUpload" HeaderText="DateOfUpload" SortExpression="DateOfUpload" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:TemplateField HeaderText="Pic" SortExpression="Pic">
                    <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Pic") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Label1" runat="server" ImageUrl='<%# Bind("Pic") %>' Width="100px" Height="100px"></asp:Image>
                        </ItemTemplate>
                    </asp:TemplateField>
                      <asp:TemplateField HeaderText="Pic" SortExpression="Pic">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Pic") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:HyperLink ID="Label1" Text="Download" runat="server" NavigateUrl='<%# Bind("Pic") %>' Width="100px" Height="100px"></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionDB %>" SelectCommand="SELECT * FROM [tblOtherDesign]"></asp:SqlDataSource>
    </p>
</asp:Content>

