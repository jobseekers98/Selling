﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Store/MasterPageDesigner.master" AutoEventWireup="true" CodeFile="uploadStaples.aspx.cs" Inherits="Designer_upload_Design_BridalDress" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 1016px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <p>
        &nbsp;
    </p>
    <p>
        <strong style="font-family: 'Tempus Sans ITC'; color: #CC6600; font-size: large;">To upload a Sstaples Grocery fill the following fields:</strong>
    </p>
    <p>
        <strong style="font-family: 'Tempus Sans ITC'; color: #CC6600; font-size: large;">
            <br />
            <table class="auto-style1">
                <tr>
                    <td>Grocery Category</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>Store Login ID</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <strong style="font-family: 'Tempus Sans ITC'; color: #CC6600; font-size: large;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="this field cannot br empty" Font-Overline="False" Font-Size="Small" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td>Date of Upload</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <strong style="font-family: 'Tempus Sans ITC'; color: #CC6600; font-size: large;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="this field cannot br empty" Font-Overline="False" Font-Size="Small" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        <strong style="font-family: 'Tempus Sans ITC'; color: #CC6600; font-size: large;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="this field cannot br empty" Font-Overline="False" Font-Size="Small" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td>Pic</td>
                    <td class="auto-style2">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <strong style="font-family: 'Tempus Sans ITC'; color: #CC6600; font-size: large;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="FileUpload1" ErrorMessage="this field cannot br empty" Font-Overline="False" Font-Size="Small" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <strong style="font-family: 'Tempus Sans ITC'; color: #CC6600; font-size: large;">
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </strong>
                    </td>
                </tr>
            </table>
        </strong>
    </p>
    <p>
        &nbsp;
    </p>
    <p>
        <br />
        <br />
    </p>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

