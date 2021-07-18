<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CompanyRegistration.aspx.cs" Inherits="CompanyRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="auto-style1">
        <tr>
            <td class="auto-style3" colspan="2"><form id="form1" runat="server" style="font-size: small; font-family: Georgia, 'Times New Roman', Times, serif; font-style: oblique;">
                <p style="font-size: xx-large; font-family: Centaur; height: 27px;" class="auto-style5">
                    <strong>Register Yourself</strong></p>
&nbsp;Fill Your Details...</td>
        </tr>
        <%--<tr>
            <td class="auto-style8">Company ID&nbsp; </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtComanyId" runat="server" Width="288px" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtComanyId" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">this field can&#39;t be empty</asp:RequiredFieldValidator>
            </td>
        </tr>--%>
        <tr>
            <td class="auto-style8">Name</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtCompanyName" runat="server" Width="289px" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtCompanyName" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">this field can&#39;t be empty</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Login ID</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtLoginID" runat="server" Width="289px" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtLoginID" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">this field can&#39;t be empty</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Password</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtPassword" runat="server" Width="289px" Height="30px" TextMode="Password" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtPassword" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">this field can&#39;t be empty</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Confirm Password</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtCofirmPassword" runat="server" Width="289px" Height="30px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtCofirmPassword" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">this field can&#39;t be empty</asp:RequiredFieldValidator>
&nbsp;<br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtCofirmPassword" ErrorMessage="password mismatch" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Address</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtCompanyAddress" runat="server" Width="289px" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtCompanyAddress" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">this field can&#39;t be empty</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Contact</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtContact" runat="server" Width="289px" Height="30px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtContact" ErrorMessage="invalid format" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="txtContact" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">this field can&#39;t be empty</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Email ID</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtEmailID" runat="server" Width="289px" Height="30px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmailID" ErrorMessage="invalid format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="txtEmailID" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">this field can&#39;t be empty</asp:RequiredFieldValidator>
            </td>
        </tr>
        <%--<tr>
            <td class="auto-style8">Fax No</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtFaxNo" runat="server" Width="289px" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="txtFaxNo" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">this field can&#39;t be empty</asp:RequiredFieldValidator>
            </td>
        </tr>--%>
        <tr>
            <td class="auto-style4">Country</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtCountry" runat="server" Width="289px" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="txtCountry" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">this field can&#39;t be empty</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">State</td>
            <td class="auto-style10">
                <asp:DropDownList ID="DropDownListState" runat="server" Height="30px">
                    <asp:ListItem>select</asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
                    <asp:ListItem>Uttrakhand</asp:ListItem>
                    <asp:ListItem>Uttar Pradesh</asp:ListItem>
                    <asp:ListItem>Punjab</asp:ListItem>
                    <asp:ListItem>Haryana</asp:ListItem>
                    <asp:ListItem>Gujrat</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="DropDownListState" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">this field can&#39;t be empty</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">PIN</td>
            <td class="auto-style12">
                <asp:TextBox ID="txtPIN" runat="server" Width="102px" Height="30px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPIN" ErrorMessage="invalid format" ForeColor="Red" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="txtPIN" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">this field can&#39;t be empty</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Button ID="btnRegister" runat="server" Text="Register" Height="25px" Width="83px" OnClick="btnRegister_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblMessage" runat="server" ForeColor="Lime"></asp:Label>
            </td>
       </form>
             </tr>
    </table>

</asp:Content>
