<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1" runat="server">
   <div style="font-family: 'Snap ITC'; font-size: 18px;">      <br/>
       <br />
       <br />
       <br />
       <strong>About This Website: </strong>
       <br />
       This website provide you a facility of Selling and Purchase Grocery Items, this means we provide a number of Items for the customer and give a opportunity to Stores to purchase there product at web plateform.<br />
       <br />
       <strong>Designer:</strong>
       <br />
       Store is person or Organization who register in this website and can upload their grocery Items after recieving ans approval from the admin.<br />
       <br />
       <strong>Customer:</strong>
       <br />
       Customer refers to the users which are intrested to purchase grocery items and they can register in this website and can items according their requirements.
       <br />
    </div>
        <br/>
        <asp:Image ID="Image2" ImageUrl="~/images/a4.jpg"  runat="server" Height="224px" Width="450px"  />
        <asp:Image ID="Image3" ImageUrl="~/images/a5.jpg" runat="server" Height="230px" Width="470px" />
       
        <br/>
     </form>
     </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Image ID="Image1" runat="server" />
</asp:Content>