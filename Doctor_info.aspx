<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Doctor_info.aspx.cs" Inherits="Hospital_App.Doctor_info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 211px;
        }
        .auto-style4 {
            height: 23px;
            width: 211px;
            text-align: right;
        }
        .auto-style5 {
            width: 211px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">Doctor Id&nbsp;&nbsp; </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style8" ErrorMessage="Doctor Id Not Mentioned"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Doctor Name&nbsp;&nbsp; </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style8" ErrorMessage="Doctor Name Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Doctor specialization&nbsp;&nbsp; </td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="150px">
                            <asp:ListItem>Select </asp:ListItem>
                            <asp:ListItem>Cardiac Arrest</asp:ListItem>
                            <asp:ListItem>Major Accidents</asp:ListItem>
                            <asp:ListItem>Cancer</asp:ListItem>
                            <asp:ListItem>Minor Cases</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList1" CssClass="auto-style8" ErrorMessage="Profession Is Required" InitialValue="Select "></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Doctor Status&nbsp;&nbsp; </td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="DropDownList2" runat="server" Width="150px">
                            <asp:ListItem>Select Status</asp:ListItem>
                            <asp:ListItem>Available</asp:ListItem>
                            <asp:ListItem>Not Available</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList2" CssClass="auto-style8" ErrorMessage="Mention Doctor Status" InitialValue="Select Status"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Button ID="Button1" runat="server" Text="Submit" Width="100px" OnClick="Button1_Click" />
                        
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
    <style>
        #Button1{
            margin:10px;
        }
        
        .auto-style6 {
            width: 256px;
        }
        .auto-style7 {
            height: 23px;
            width: 256px;
        }
        .auto-style8 {
            color: #FF0000;
        }
        
    </style>
</body>
</html>
