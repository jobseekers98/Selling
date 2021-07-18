<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="Packaged.aspx.cs" Inherits="Admin_SuitDesign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        <strong style="font-size: xx-large; font-family: 'Berlin Sans FB'">List of Items is as follows:</strong></p>
    <p>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="DesignID" HeaderText="DesignID" InsertVisible="False" ReadOnly="True" SortExpression="DesignID" />
                <asp:BoundField DataField="DesignCategory" HeaderText="DesignCategory" SortExpression="DesignCategory" />
                <asp:BoundField DataField="DesignerLoginID" HeaderText="DesignerLoginID" SortExpression="DesignerLoginID" />
                <asp:BoundField DataField="DateOfUpload" HeaderText="DateOfUpload" SortExpression="DateOfUpload" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:TemplateField HeaderText="Pic" SortExpression="Pic">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Pic") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Label1" runat="server" ImageUrl='<%# Bind("Pic") %>' Height="100px" Width="100px"></asp:Image>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionDB %>" SelectCommand="SELECT * FROM [tblLadiesSuit]"></asp:SqlDataSource>
        <br />
    </p>
</asp:Content>

