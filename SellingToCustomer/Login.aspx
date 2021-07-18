<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
     .capsul{
             border-radius:25px;
         }
</style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1" runat="server">
        <p>
            <br />
        </p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <center>  <table class="auto-style1" CssClass="capsul">
                <tr>
                    <td class="auto-style3" colspan="2" style="font-size: x-large; font-family: 'Bell MT'"><strong>Login Here</strong></td>
                </tr>
                <tr>
                    <td class="auto-style4" style="font-family: Cipote">Login ID</td>
                    <td>
                        <asp:TextBox ID="txtlogin" runat="server" CssClass="capsul" Width="97px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="font-family: Cipote">Password</td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="capsul" Width="95px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" Width="59px" CssClass="capsul"/>
                    </td>
                    <td>
                        <asp:Label ID="lblLogin" runat="server"></asp:Label>
                        <br />
                        <asp:Label ID="lblLogin0" runat="server" ForeColor="#FF3300"></asp:Label>
                    </td>
                </tr>
            </table></center>
            &nbsp;</p>
    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

