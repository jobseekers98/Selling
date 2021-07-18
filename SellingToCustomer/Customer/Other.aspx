<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/MasterPageCustomer.master" AutoEventWireup="true" CodeFile="Other.aspx.cs" Inherits="Customer_OtherDesign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="menuitem" Runat="Server">
    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">...back</asp:LinkButton>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" Height="227px" ImageUrl='<%# Eval("Pic") %>' Width="258px" />
            <br />
            Category:<asp:Label ID="DesignCategoryLabel" runat="server" Text='<%# Eval("DesignCategory") %>' />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Height="35px" Text="ADD" Width="71px" OnClick="Button1_Click" PostBackUrl='<%# Eval("DesignID","MakePayment4.aspx?pid={0}") %>'/>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionDB %>" SelectCommand="SELECT * FROM [tblOtherDesign]"></asp:SqlDataSource>
</asp:Content>

