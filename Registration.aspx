<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Denis_Footwear.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration_Page</title>
    <style>
        body
        {
            background-image:url("BackImage.jpg");
        }
        .tbl1
        {
            margin-top:56px;
            margin-left:250px;
            width:30%;
            font-size:24px;
            line-height:2.5;
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

         <div>
            <center>
                <table border="1" class="tbl1">
                            
                    <tr>
                        <th colspan="2" 
                            style="color:aliceblue;
                            font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
                            font-size:30px;">
                            Registration form
                        </th>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="lblfnm" runat="server" Text="FirstName" ForeColor="White"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtfnm" runat="server" Height="24px" Font-Size="13px"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="lbllnm" runat="server" Text="LastName" ForeColor="White"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtlnm" runat="server" Height="24px" Font-Size="13px"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="lbldob" runat="server" Text="Date Of Birth" ForeColor="white"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtdob" runat="server" TextMode="Date" Height="24px" Font-Size="20px"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="lblpass" runat="server" Text="Password" ForeColor="white"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtpass" runat="server" TextMode="Password" Height="24px" Font-Size="13px"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="lblgmail" runat="server" Text="Gmail" ForeColor="white"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtgmail" runat="server" Height="24px" Font-Size="13px"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="lblmo" runat="server" Text="Mo.No" ForeColor="white"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtmo" runat="server" Height="24px" Font-Size="13px"></asp:TextBox>
                        </td>
                    </tr>
                
                    <tr>
                        <td>
                            <asp:Label ID="lblbtn" runat="server" Text="Gender" ForeColor="white"></asp:Label>
                        </td>

                        <td>
                            <asp:RadioButton ID="btnmale" runat="server" Text="Male"
                                ForeColor="black" GroupName="g1"></asp:RadioButton>

                            <asp:RadioButton ID="btnfemale" runat="server" Text="Female" 
                                ForeColor="black" GroupName="g1"></asp:RadioButton>
                        </td>
                    </tr>


                    <tr>
                       <td>
                            <asp:Button ID="btncancel" runat="server" Text="Cancel" ForeColor="Red" width="80px" Height="30px" OnClick="btncancel_Click"/>
                       </td>

                       <td>
                           <asp:Button ID="btnsubmit" runat="server" Text="Submit" ForeColor="Green" width="80px" Height="30px" OnClick="btnsubmit_Click"/>
                           <asp:Button ID="btnlogin" runat="server" Text="Login" ForeColor="blue" width="80px" Height="30px" OnClick="btnlogin_Click"/>    
                       </td>
                    </tr>

                    <asp:Label ID="MessageLabel" runat="server" ForeColor="Red"></asp:Label>

                </table>
            </center>
        </div>

    </form>
</body>
</html>
