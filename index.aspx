<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Hospital_App.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
    <script src="jquery-3.3.1.js"></script>
</head>
<body>

              <div class="topnav">
                  <a class="active" href="#home">Home</a>
                  <a href="#contact">Contact</a>
                  <a href="#about">About</a>
                </div>

      <div id="content">
    <form id="form1" runat="server">
      
           <div id="flyin">
            <table class="auto-style1">
                  
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button7_Click" Text="Hospital Register" />
                    </td>
                    <td class="auto-style12">
                        <asp:Button ID="Button2" runat="server" Text="Ambulance Service Registration" OnClick="Button2_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button3" runat="server" Text="Hospital Login" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="Button4" runat="server" Text="Ambulance Service Login" />
                    </td>
                </tr>
                <tr id="btn5">
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style10">
                        <asp:Button ID="Button5" runat="server" Text="Go Service" OnClick="Button5_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
          </div>
 


    <style>
         body {
          margin: 0;
          font-family: 'Quicksand';
           background-color:#eff0f1;
        }


          .topnav {
          overflow: hidden;
          background-color: #333;
        }

        .topnav a {
          float: left;
          color: #f2f2f2;
          text-align: center;
          padding: 14px 16px;
          text-decoration: none;
          font-size: 17px;
        }

        .topnav a:hover {
          background-color: #ddd;
          color: black;
        }

        .topnav a.active {
          background-color: darkgrey;
          color: black;
        }

        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            height: 58px;
        }
        #content{
            font-family: 'Quicksand';
           position:absolute;
          width: 300px;
          height: 200px;
          z-index: 15;
          top: 30%;
          left: 30%;
          margin: -100px 0 0 -150px;
          background-color:#eff0f1;
        }
        #Button1, #Button2, #Button3, #Button4, #Button5{
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
       
         #Button1:hover, #Button2:hover, #Button3:hover, #Button4:hover, #Button5:hover{
             cursor:pointer;
             background-color:deepskyblue;
         }
         #flyin  {
             width:100px; height:100px; 
             background:#efefef; 
             position:absolute;
             left:-100px;

         }
         #btn5{
              width:100px; height:100px; 
             background:#efefef; 
             position:absolute;
             right:-1000px;
         }
    </style>

    <script>

     
    // Calculate current broser width.
    
            var currWidth = $(window).width();
            
        var startPos = -100;
          var startPos2 = 100;
        var endPos = (currWidth / 10);
         var endPos2 = (currWidth / -10);
           
               $('#btn5').animate({ right: endPos2 }, 1000);
              $('#flyin').animate({ left: endPos }, 1000);
        
   </script>
</body>
</html>
