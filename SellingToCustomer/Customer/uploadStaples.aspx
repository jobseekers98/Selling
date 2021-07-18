<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/MasterPageCustomer.master" AutoEventWireup="true" CodeFile="uploadStaples.aspx.cs" Inherits="Customer_Design" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="menuitem" Runat="Server">
    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">...back</asp:LinkButton>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>

    </div>
    <div>

        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table cellpadding="11" cellspacing="12" class="auto-style1">
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" Height="174px" ImageUrl='<%# Eval("Pic") %>' Width="261px" />
                        </td>
                    </tr>
                    <tr>
                        <td>Item ID:
                            <asp:Label ID="Label3" runat="server" style="font-weight: 700" Text='<%# Eval("DesignID") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Name:<asp:Label ID="Label1" runat="server" style="font-weight: 700" Text='<%# Eval("DesignCategory") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Price:<asp:Label ID="Label2" runat="server" style="font-weight: 700" Text='<%# Eval("Price") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" Height="43px" Text="BuyNow" Width="74px" OnClick="Button1_Click" PostBackUrl='<%# Eval("DesignID","MakePayment.aspx?pid={0}") %>' />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblMessage" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionDB %>" SelectCommand="SELECT * FROM [tblLadiesSaree]"></asp:SqlDataSource>

    </div>
</asp:Content>

