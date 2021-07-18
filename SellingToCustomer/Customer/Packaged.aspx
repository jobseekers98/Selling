<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/MasterPageCustomer.master" AutoEventWireup="true" CodeFile="Packaged.aspx.cs" Inherits="Customer_BridalDesign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="menuitem" Runat="Server">
    <p>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">...back</asp:LinkButton>
        <br />
    </p>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3">
            <ItemTemplate>
                <asp:Image ID="Image2" runat="server" Height="278px" ImageUrl='<%# Eval("Pic") %>' Width="311px" />
                <br />
                Category:<asp:Label ID="DesignCategoryLabel" runat="server" Text='<%# Eval("DesignCategory") %>' />
                <br />
                Price:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Height="37px" Text="ADD" Width="85px" OnClick="Button2_Click" PostBackUrl='<%# Eval("DesignID","MakePayment3.aspx?pid={0}") %>'/>
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionDB %>" SelectCommand="SELECT * FROM [tblBridalDress]"></asp:SqlDataSource>
</asp:Content>

