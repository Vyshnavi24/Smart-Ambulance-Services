<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hospital_admin.aspx.cs" Inherits="Hospital_App.hospital_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h3>Welcome</h3>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="hos_name" runat="server" Text="Hospital Name"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table class="auto-style1">
                <tr>
                    <td>
                        <a href="Doctor_info.aspx">Doctor Information</a>

                    </td>
                    <td class="auto-style9">
                        <asp:Button ID="Button2" runat="server" CausesValidation="False" OnClick="Button2_Click" Text="Logout" />
                    </td>
                </tr>
            </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
    <style>
        #hos_name{
            color:lightskyblue;
            font-size:25px;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 306px;
            height: 42px;
        }
        .auto-style3 {
            width: 236px;
            height: 42px;
        }
        .auto-style4 {
            text-align: left;
            height: 32px;
        }
        .auto-style5 {
            color: #FF0000;
        }
        .auto-style6 {
            width: 306px;
            text-align: right;
            height: 32px;
        }
        .auto-style7 {
            width: 236px;
            height: 32px;
        }
        .auto-style8 {
            height: 42px;
        }
        .auto-style9 {
            text-align: right;
        }
    </style>
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">Treatments Carried By Hospital&nbsp;&nbsp; </td>
                <td class="auto-style7">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                        <asp:ListItem>Select Treatments</asp:ListItem>
                        <asp:ListItem>Cardiac Arrest</asp:ListItem>
                        <asp:ListItem>Major Accidents</asp:ListItem>
                        <asp:ListItem>Cancer</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" CssClass="auto-style5" ErrorMessage="Invalid Selection" InitialValue="Select Treatments"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="save" Width="100px" />
                </td>
                <td class="auto-style8"></td>
            </tr>
        </table>
    </form>
    </body>
</html>
