<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hospital_Register.aspx.cs" Inherits="Hospital_App.Hospital_Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 230px;
        }
        .auto-style4 {
            width: 230px;
            text-align: right;
        }
    </style>
    <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
    <link  rel="stylesheet" href="common_style.css" />
</head>
<body>
     <div class="topnav">
                  <a class="active" href="#home">Home</a>
                  <a href="#contact">Contact</a>
                  <a href="#about">About</a>
                </div>
    <form id="form1" runat="server">
        <div id="outer">
            <table class="auto-style1">
            <tr>
                <td class="auto-style4">Hospital Name&nbsp;&nbsp; </td>
                <td class="auto-style5">
                    <asp:TextBox ID="Hos_name" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Hos_name" CssClass="auto-style9" ErrorMessage="Hospital Name Required!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Hospital ID</td>
                <td class="auto-style5">
                    <asp:TextBox ID="Hosp_id" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="Hosp_id" CssClass="auto-style9" ErrorMessage="Hospital Id  Required!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Country&nbsp;&nbsp; </td>
                <td class="auto-style5">
                    <asp:DropDownList ID="country_dlist" runat="server" Width="150px">
                        <asp:ListItem Selected="True" Value="Select Country1">Select Country</asp:ListItem>
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>UK</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>Australia</asp:ListItem>
                        <asp:ListItem>Germany</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="country_dlist" CssClass="auto-style9" ErrorMessage="Select Your Country!" InitialValue="Select Country1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">City&nbsp;&nbsp; </td>
                <td class="auto-style5">
                    <asp:DropDownList ID="city_dlist" runat="server" Width="150px">
                        <asp:ListItem Selected="True">Select City</asp:ListItem>
                        <asp:ListItem>Pune</asp:ListItem>
                        <asp:ListItem>Delhi</asp:ListItem>
                        <asp:ListItem>Hyderabad</asp:ListItem>
                        <asp:ListItem>Mumbai</asp:ListItem>
                        <asp:ListItem>Chicago</asp:ListItem>
                        <asp:ListItem>NY</asp:ListItem>
                        <asp:ListItem>Boston</asp:ListItem>
                        <asp:ListItem>London</asp:ListItem>
                        <asp:ListItem>Manchester</asp:ListItem>
                        <asp:ListItem>Bristol</asp:ListItem>
                        <asp:ListItem>Oxford</asp:ListItem>
                        <asp:ListItem>Southampton</asp:ListItem>
                        <asp:ListItem>Sydney</asp:ListItem>
                        <asp:ListItem>Melbourne</asp:ListItem>
                        <asp:ListItem>Brisbane</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="city_dlist" CssClass="auto-style9" ErrorMessage="Select Your City!" InitialValue="Select City"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Address</td>
                <td class="auto-style5">
                    <asp:TextBox ID="Addr_t" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Addr_t" CssClass="auto-style9" ErrorMessage="Address Required!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Area&nbsp;&nbsp; </td>
                <td class="auto-style5">
                    <asp:TextBox ID="Area_t" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Area_t" CssClass="auto-style9" ErrorMessage="Area Required!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">LandMark&nbsp;&nbsp; </td>
                <td class="auto-style5">
                    <asp:TextBox ID="Landmark_t" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Landmark_t" CssClass="auto-style9" ErrorMessage="LandMark Required!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Zipcode&nbsp;&nbsp; </td>
                <td class="auto-style5">
                    <asp:TextBox ID="Zip_t" runat="server" Width="100px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Zip_t" CssClass="auto-style9" ErrorMessage="ZipCode Required!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Telephone&nbsp;&nbsp; </td>
                <td class="auto-style7">
                    <asp:TextBox ID="Tele_t" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Tele_t" CssClass="auto-style9" ErrorMessage="Telephone Number Required!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Hospital Email&nbsp;&nbsp; </td>
                <td class="auto-style5">
                    <asp:TextBox ID="Hosp_eml_t" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="Hosp_eml_t" CssClass="auto-style9" ErrorMessage="Hospital Email Required!"></asp:RequiredFieldValidator>
                    <br class="auto-style9" />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Hosp_eml_t" CssClass="auto-style9" ErrorMessage="Enter Proper Email Id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Password&nbsp;&nbsp; </td>
                <td class="auto-style5">
                    <asp:TextBox ID="Pass_t" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="Pass_t" CssClass="auto-style9" ErrorMessage="Admin Password Required!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Re-Enter Password&nbsp;&nbsp; </td>
                <td class="auto-style5">
                    <asp:TextBox ID="Renter_pass_t" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="Renter_pass_t" CssClass="auto-style9" ErrorMessage="Re-enter your password!"></asp:RequiredFieldValidator>
                    <br class="auto-style9" />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Pass_t" ControlToValidate="Renter_pass_t" CssClass="auto-style9" ErrorMessage="Password Didn't Match!"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="Cancel"  CausesValidation="False" OnClick="Button2_Click"/>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
            </div>

        <div>
        </div>
    </form>
    <style>
        #Button2{
            margin-left:80px;
        }

        .auto-style5 {
            width: 255px;
        }
        .auto-style6 {
            width: 230px;
            text-align: right;
            height: 26px;
        }
        .auto-style7 {
            width: 255px;
            height: 26px;
        }
        .auto-style8 {
            height: 26px;
        }
        .auto-style9 {
            color: #FF0000;
        }
        .auto-style4{
            color:white;
        }
        #outer{
            background-color:rebeccapurple;
            padding:10px;
            margin:100px;
            width:700px;
        }
       #Addr_t, #Renter_pass_t, #Pass_t, #Hosp_eml_t, #Tele_t, #Zip_t, #Landmark_t, #Area_t ,#Hosp_id, #Hos_name{
           border-style:none;
           outline:none;
          background:transparent;
          border-bottom:1px solid white;
          margin:10px;
          color:floralwhite;
       }
       #country_dlist,#city_dlist{
            border-style:none;
           outline:none;
          background:transparent;
        color:white;
          margin:10px;
           background-color:dimgray;
           padding:15px;
             font-family: 'Quicksand';
       }
       #country_dlist:hover,#city_dlist:hover{
            transition:.5s;
           background-color:gray;
           color:white;
           width:350px;
           cursor:pointer;
       }
        #Addr_t:focus, #Renter_pass_t:focus, #Pass_t:focus, #Hosp_eml_t:focus, #Tele_t:focus, #Zip_t:focus, #Landmark_t:focus, #Area_t:focus ,#Hosp_id:focus, #Hos_name:focus{
            transition:.5s;
           background-color:floralwhite;
           color:black;
           border-radius:10px;
           padding:5px;
        }
        #Button1, #Button2{
              font-family: 'Quicksand';
            margin-left:100px;
            border-style:none;
            height:50px;
            width:250px;
            font-size:15px;
            background-color:cornflowerblue;
              margin:20px;
              color:floralwhite;
        }
        #Button1:hover, #Button2:hover {
            cursor: pointer;
            background-color: deepskyblue;
        }
        body{
            font-family: 'Quicksand';
        }
    </style>

</body>
</html>
