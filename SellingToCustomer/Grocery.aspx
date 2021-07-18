<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1" runat="server">
   <div style="font-family: 'Myanmar Text'">      <br/>
       <br />
       <br />
       <br />
       <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4">
           <ItemTemplate>
               <asp:Image ID="Image1" runat="server" Height="202px" ImageUrl='<%# Eval("Pic") %>' Width="240px" />
               <br />
               Item Id:
               <asp:Label ID="DesignIDLabel" runat="server" Text='<%# Eval("DesignID") %>' />
               <br />
               Grocery Category:
               <asp:Label ID="DesignCategoryLabel" runat="server" Text='<%# Eval("DesignCategory") %>' />
               <br />
               Price:
               <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
               <br />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="Button1" runat="server" Height="42px" OnClick="Button1_Click" Text="Buy Now" Width="105px" />
               <br />
               <br />
           </ItemTemplate>
       </asp:DataList>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionDB %>" SelectCommand="SELECT * FROM [tblOtherDesign]"></asp:SqlDataSource>
       <br />
       <br />
    </div>
        <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
     </form>
     </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
</asp:Content>