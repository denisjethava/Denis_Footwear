<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Denis_Footwear.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login_Page</title>
     <style>
         body
         {
            background-image:url("Login.jpg");
         }
        .tbl1
        {
            margin-top:120px;
            width:30%;
            font-size:24px;
            line-height:2.5;
            text-align:center;
        }
     </style>
</head>
<body style="background-color:darkcyan;">
    <form id="form1" runat="server">
        
        <div>
            <center>
                <table border="1" class="tbl1">
                    <tr>
                        <th colspan="2" 
                            style="color:black;
                            font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
                            font-size:30px;">
                            Login form
                        </th>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="lblfnm" runat="server" Text="FirstName" ForeColor="black"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtfnm" runat="server" Height="24px" Font-Size="15px"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="lblpass" runat="server" Text="Password" ForeColor="black"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtpass" runat="server" TextMode="Password" Height="24px" Font-Size="15px"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                       <td>
                           <asp:Button ID="btnback" runat="server" Text="Back" ForeColor="black" width="80px" Height="30px"/>
                       </td>

                        <td>
                           <asp:Button ID="btnlogin" runat="server" Text="Login" ForeColor="blue" width="80px" Height="30px" OnClick="btnlogin_Click"/>    
                            <asp:Button ID="btnregister" runat="server" Text="Registration" ForeColor="Red" width="90px" Height="30px" OnClick="btnregister_Click"/>    
                       </td>
                    </tr>

                     <asp:Label ID="MessageLabel" runat="server" ForeColor="Red"></asp:Label>
                </table>
            </center>
        </div>

    </form>
</body>
</html>
