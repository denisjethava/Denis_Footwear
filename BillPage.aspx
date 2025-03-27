<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BillPage.aspx.cs" Inherits="Denis_Footwear.BillPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BillPage_Generate</title>
    <style>
        b
        {
            color:black;
            display:inline-block;
            margin-left:120px;
            margin-top:35px;
            font-size:30px;
            font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            
        }
        .titlelogo
        {
            background-image:url("billLogo.png");
            background-repeat:no-repeat;
            background-size:contain;
            width:100px;
            height:100px;
        }
        .billlogo
        {
            background-image:url("billLogo.png");
            background-repeat:no-repeat;
            background-size:contain;
            width:50px;
            height:50px;
        }
        .tbl
        {
            color:black;
            margin-top:120px;
            font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            font-size:20px;
        }
        body
        {
            background-image:url("BillGenerate.jpg");
            background-size:cover;
            background-repeat:no-repeat;
            color:white;
        }
        .btnbtn
        {
            margin-top:150px;
            margin-left:680px;
            word-spacing:10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div>
            <h1 class="titlelogo">
                <b>denis_footwear</b>
            </h1>
        </div>

        <div>
            <table border="1" align="center" class="tbl" id="tbldata" runat="server">  
                
               <tr>
                   <th colspan="8" class="billlogo">Bill Generate</th>
               </tr>

                <tr>
                    <th>Chapple</th>
                    <th>Size</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Total</th>
                </tr>

                <tr>
                    <td><asp:Label ID="lblchapplepu" runat="server"></asp:Label></td>
                    <td><asp:Label ID="lblSize" runat="server"></asp:Label></td>
                    <td><asp:Label ID="lblQuantity" runat="server"></asp:Label></td>
                    <td><asp:Label ID="lblPrice" runat="server"></asp:Label></td>
                    <td><asp:Label ID="lblTotal" runat="server"></asp:Label></td>
                </tr>
            </table>
        </div>

        <div class="btnbtn">
            <asp:Button ID="Button2" runat="server" Text="back" ForeColor="white" BackColor="Black" width="80px" Height="35px" Font-Size="20px" OnClick="Button2_Click"/>
            <asp:Button ID="Button1" runat="server" Text="Print" ForeColor="white" BackColor="Blue" width="80px" Height="35px" Font-Size="20px" OnClick="Button1_Click"/>
        </div>

        <div>
            <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>
        </div>

    </form>
</body>
</html>
