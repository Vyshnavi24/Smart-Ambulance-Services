<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="distance_btw.aspx.cs" Inherits="Hospital_App.distance_btw" %>


<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title></title>
    <script src="jquery-3.3.1.js"></script>
    <script type="text/javascript">
             
            function caldist(){
                   
                var val = '<%=value%>';
                var strImag = '<%=strImagePath%>';
            
//               dis.innerHTML = src;
//                dis.innerHTML += "<br>";
//                   dis.innerHTML += dest;
                
                var x = "https://maps.googleapis.com/maps/api/distancematrix/json?units=imperial&origins="+encodeURIComponent(val)+"&destinations="+encodeURIComponent(strImag)+"&key=AIzaSyDBjTaFs32Q903l_UY6u_S1IXzQEIHY-ww";
                //var dist = x.rows[0].elements[0].distance.value / 1000;
               // console.log(dist);
                 console.log(x);
              $.get({
                     
                    url: x,
                     
               sucess : function(data2){
                   

                   console.log(data2);
//                   console.log(data2.rows[0].elements[0].distance.value / 1000);
               }
            });

//            $api = file_get_contents("https://maps.googleapis.com/maps/api/distancematrix/json?units=imperial&origins=".$origin."&destinations=".$destination."&key=YOUR_API_KEY");
//                      
        }
        caldist();
</script>
</head>
<body>
    <form id="form1" runat="server">
       
       
       
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Navigate" />
       
       
       
       </form>
</body>
</html>