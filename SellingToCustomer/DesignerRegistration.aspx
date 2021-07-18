<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DesignerRegistration.aspx.cs" Inherits="DesignerRegistration" %>



<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3" colspan="2">
                <form id="form1" runat="server" style="font-size: small; font-family: Georgia, 'Times New Roman', Times, serif; font-style: oblique;">
                    <p style="font-size: xx-large; font-family: Centaur; height: 27px;" class="auto-style5">
                        <strong>Register Yourself</strong></p>
                    &nbsp;Fill Your Basic Details...</td>
        </tr>
        <tr>
            <td class="auto-style8">Name</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtName" runat="server" Width="289px" Height="27px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">this field can&#39;t be empty</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Login ID</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtLoginID" runat="server" Width="289px" Height="27px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtLoginID" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">this field can&#39;t be empty</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Password</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtPassword" runat="server" Width="289px" Height="27px" TextMode="Password"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtPassword" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">this field can&#39;t be empty</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Confirm Password</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtConfirmPassword" runat="server" Width="289px" Height="27px" TextMode="Password"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">this field can&#39;t be empty</asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="password mismatch" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Gender</td>
            <td class="auto-style2">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="16px" RepeatDirection="Horizontal" Width="139px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">this field can&#39;t be empty</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td class="auto-style8">Address</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtAddress" runat="server" Width="289px" Height="27px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtAddress" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">this field can&#39;t be empty</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Contact</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtContact" runat="server" Width="289px" Height="27px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="txtContact" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">this field can&#39;t be empty</asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtContact" ErrorMessage="invalid format" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Emal ID</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtEmailID" runat="server" Width="289px" Height="27px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="txtEmailID" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">this field can&#39;t be empty</asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtEmailID" ErrorMessage="invalid format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Country</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtCountry" runat="server" Width="289px" Height="27px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="txtCountry" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">this field can&#39;t be empty</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">State</td>
            <td class="auto-style2">
                <asp:DropDownList ID="DropDownListState" runat="server" Height="27px">
                    <asp:ListItem>select</asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
                    <asp:ListItem>Uttrakhand</asp:ListItem>
                    <asp:ListItem>Uttar Pradesh</asp:ListItem>
                    <asp:ListItem>Punjab</asp:ListItem>
                    <asp:ListItem>Haryana</asp:ListItem>
                    <asp:ListItem>Gujrat</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="DropDownListState" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">this field can&#39;t be empty</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">City</td>
            <td class="auto-style9">
                <asp:DropDownList ID="DropDownListCity" runat="server" Height="27px">
                    <asp:ListItem>select</asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
                    <asp:ListItem>Uttrakhand</asp:ListItem>
                    <asp:ListItem>Uttar Pradesh</asp:ListItem>
                    <asp:ListItem>Punjab</asp:ListItem>
                    <asp:ListItem>Haryana</asp:ListItem>
                    <asp:ListItem>Gujrat</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="DropDownListCity" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">this field can&#39;t be empty</asp:RequiredFieldValidator>
                <br /></td>
        </tr>
        <tr>
            <td class="auto-style8">PIN</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtPIN" runat="server" Width="102px" Height="27px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="txtPIN" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">this field can&#39;t be empty</asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPIN" ErrorMessage="invalid format" ForeColor="Red" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Button ID="btnRegister" runat="server" Text="Register" Height="25px" Width="83px" OnClick="btnRegister_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
       </form>
             </tr>
    </table>
</asp:Content>

<asp:Content ID="Content4" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            height: 25px;
        }
        .auto-style2 {
            height: 25px;
            width: 287px;
        }
        .auto-style3 {
            width: 359px;
        }
        .auto-style4 {
            width: 160px;
        }
        .auto-style5 {
            width: 348px;
        }
        .auto-style6 {
            width: 347px;
        }
        .auto-style8 {
            height: 25px;
            width: 160px;
        }
        .auto-style9 {
            width: 287px;
        }
    </style>
</asp:Content>


