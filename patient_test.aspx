<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="patient_test.aspx.cs" Inherits="Hospital_App.patient_test" %>

<!DOCTYPE html> 
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

<meta name="viewport" content="initial-scale=1.0, user-scalable=no"/> 

<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<title>Reverse Geocoding</title> 


    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: right;
            width: 410px;
        }
        .auto-style3 {
            width: 330px;
        }
        .auto-style4 {
            width: 410px;
        }
        .auto-style5 {
            color: #FF0000;
        }
    </style>


</head> 
<body onload="locateMe()"> 
    
      <form runat="server">
            <div>
                <asp:HiddenField ID="lochf" runat="server"  Value="" />
                  <asp:HiddenField ID="postalhf" runat="server" />
            </div>
      

            <asp:GridView ID="GridView1" runat="server" CellPadding="10" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="GridView1_RowDataBound" >
                <AlternatingRowStyle BackColor="White" />
                 <AlternatingRowStyle BackColor="White" />
                 <Columns>
                    <asp:CommandField ShowSelectButton="True" SelectText="VIEW" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
      
          
            
      
          
          <div id="output"></div>
      

            <asp:Button ID="Button2" runat="server" CausesValidation="False" OnClientClick="locateMe" Text="get location" OnClick="Button2_Click" />
      

            <br />
    
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Select The Type Of Patient&nbsp;&nbsp; </td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Select Patient Type</asp:ListItem>
                            <asp:ListItem>Cardiac Arrest</asp:ListItem>
                            <asp:ListItem>Major Accidents</asp:ListItem>
                            <asp:ListItem>Cancer</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" CssClass="auto-style5" ErrorMessage="Didn't select the type of patient" InitialValue="Select Patient Type"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">
                  <asp:Button ID="Button1" runat="server" Text="get details" OnClick="Button1_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
    
    
    </form>
    
     
      <script src="jquery-3.3.1.js"></script>
   <script>
            var x = document.getElementById("output");
         
            function locateMe(){
                if(navigator.geolocation){
                  navigator.geolocation.getCurrentPosition(showPos);
                }
                else{
                    x.innerHTML = "browser not supported";
                }
            }
            function showPos(position){
                
              //  x.innerHTML = "Lat:"+position.coords.latitude + "<br>"+ "Long:"+position.coords.longitude;
             var locapi = "https://maps.googleapis.com/maps/api/geocode/json?key=AIzaSyDBjTaFs32Q903l_UY6u_S1IXzQEIHY-ww&latlng="+position.coords.latitude+","+position.coords.longitude+"&sensor=false";
                console.log(locapi);
                
                $.get({
                    method: 'POST',
                    action: 'xhttp',
                url: locapi,
               success: function(data){
                console.log(data);
//                    x.innerHTML = data.results[0].address_components[2].long_name+", ";
//                   x.innerHTML += data.results[0].address_components[3].long_name+", ";
//                    x.innerHTML += data.results[0].address_components[4].long_name+", ";
//                   x.innerHTML += data.results[0].address_components[8].long_name;
                   
                   var myloc = data.results[0].address_components[2].long_name + "," +
                       data.results[0].address_components[3].long_name + "," +
                       data.results[0].address_components[4].long_name + "," +
                       data.results[0].address_components[7].long_name;
                    

                   crloc_lbl.innerHTML = myloc;
                   $('#<% =lochf.ClientID %>').attr('value', myloc);
                 
            } 
            });  
                
       }
       locateMe();
         
        </script>


  
</body> 
</html> 