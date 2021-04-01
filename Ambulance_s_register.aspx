<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ambulance_s_register.aspx.cs" Inherits="Hospital_App.Ambulance_s_register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 290px;
            text-align: right;
        }
        .auto-style3 {
            width: 290px;
            text-align: right;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Ambulance Service Provider&nbsp;&nbsp; </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="service_provider_name" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ambulance Service Provider Name Required!" ControlToValidate="service_provider_name" CssClass="auto-style7"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Telephone Number&nbsp;&nbsp; </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="service_provider_phn" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Organization Telephone Number Required!" ControlToValidate="service_provider_phn" CssClass="auto-style7"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Admin Name&nbsp;&nbsp; </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="t_admin" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Admin Name Required!" ControlToValidate="t_admin" CssClass="auto-style7"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Organization Email Id&nbsp;&nbsp; </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="t_org_email" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="t_org_email" CssClass="auto-style7" ErrorMessage="Specify Your Organization Mail-Id"></asp:RequiredFieldValidator>
                        <br class="auto-style7" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="t_org_email" CssClass="auto-style7" ErrorMessage="Only Email id is allowed!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Password&nbsp;&nbsp; </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="pass_t" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Password Not Entered!" ControlToValidate="pass_t" CssClass="auto-style7"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Re-Enter Password&nbsp;&nbsp; </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="repass_t" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="repass_t" CssClass="auto-style7" ErrorMessage="Re-Enter Your Password!"></asp:RequiredFieldValidator>
                        <br class="auto-style7" />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass_t" ControlToValidate="repass_t" CssClass="auto-style7" ErrorMessage="Password Didn't Match!"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click" CausesValidation="False"/>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>

    <style>
        #Button2{
            margin-left : 50px;
        }
        .auto-style5 {
            height: 26px;
            width: 237px;
        }
        .auto-style6 {
            width: 237px;
        }
        .auto-style7 {
            color: #FF0000;
        }
        .auto-style8 {
            width: 290px;
            text-align: right;
            height: 25px;
        }
        .auto-style9 {
            width: 237px;
            height: 25px;
        }
        .auto-style10 {
            height: 25px;
        }
    </style>
</body>
</html>
