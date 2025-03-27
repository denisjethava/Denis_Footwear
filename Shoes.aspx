<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shoes.aspx.cs" Inherits="Denis_Footwear.Shoes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shoes</title>
    <style>
        *{
            margin:0;
        }
        .header
        {
            color:ghostwhite;
            background-color:black;
            text-align:center;
            width:100%;
            height:50px;
            font-size:1.3rem;
            font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        }
        .lnkbackbtn
        {
            font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            font-size:1.3rem;
            width:100%;
            height:30px;
            padding-top:20px;
            text-align:right;
        }
        .lnkbackbtn a
        {
            text-decoration:none;
            color:black;
            margin-left:20px;
            padding-right:60px;
        }

        /*Lofar_Images*/
        
        .ShoesContent1
        {
          border:2px groove red;
          border-radius:20px 20px;
          display:flex;
          justify-content:flex-start;
          align-items:center;
          width:95%;
          gap:100px;
          margin:20px;
          margin-left:35px;
        }
        .ShoesImg1
        {
            height:250px;
            max-width:100%;
            margin-bottom:10px;
            margin:40px;
        }
        .ShoesDesc1
        {
          font-size:1.5rem;
          line-height:1.5;
          text-align:justify;
          padding-right:20px;
        }
        .ddlisttitle
        {
             font-size:20px;
        }
        .ddlist1
        {
            width:110px;
            height:30px;
            border-radius:5px;
            text-align:center;
        }
        .ddquantitytitle
        {
            padding-left:20px; 
             font-size:20px;
        }
        .ddquantity
        {
            width:120px;
            height:30px;
            border-radius:5px;
            text-align:center;
        }
        .Shoesbl1
        {
            font-size:20px;
            margin-left:20px;
        }
        .Shoestxt1
        {
            text-align:center;
            font-size:18px;
            width:50px;
            height:30px;
        }
        .btnnext1
        {
            margin-top:70px;
            width:80px;
            height:40px;
            border-radius:10px;
            background-color:revert-layer;
            margin-left:20px;
            font-size:25px;
        }

        /* Image1 */

        .ShoesContent2
        {
          border:2px groove red;
          border-radius:20px 20px;
          display:flex;
          justify-content:flex-start;
          align-items:center;
          width:95%;
          gap:15px;
          margin:20px;
          margin-left:35px;
          padding-bottom:20px;
        }
        .ShoesImg2
        {
            height:220px;
            max-width:100%;
            margin:20px;
            padding:20px;
            
        }
        .ShoesDesc2
        {
          font-size:1.5rem;
          line-height:1.5;
          text-align:justify;
          padding-right:20px;
        }

        /* Image2 */

        .ShoesContent3
        {
          border:2px groove red;
          border-radius:20px 20px;
          display:flex;
          justify-content:flex-start;
          align-items:center;
          width:95%;
          gap:112px;
          margin:20px;
          margin-left:35px;
          padding-bottom:20px;
        }
        .ShoesImg3
        {
            height:280px;
            max-width:100%;
            margin:20px;
            padding:20px;
            
        }
        .ShoesDesc3
        {
          font-size:1.5rem;
          line-height:1.5;
          text-align:justify;
          padding-right:20px;
        }

        /* Image5 */

        .ShoesContent5
        {
          border:2px groove red;
          border-radius:20px 20px;
          display:flex;
          justify-content:flex-start;
          align-items:center;
          width:95%;
          gap:70px;
          margin:20px;
          margin-left:35px;
          padding-bottom:20px;
        }
        .ShoesImg5
        {
            height:200px;
            max-width:100%;
            margin:20px;
            padding:20px;
            
        }
        .ShoesDesc5
        {
          font-size:1.5rem;
          line-height:1.5;
          text-align:justify;
          padding-right:20px;
        }
      </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <h1>Shoes</h1>
        </div>
    
        <div class="lnkbackbtn">
            <asp:LinkButton CssClass="backbtn" ID="lnkBack" runat="server" href="Webform1.aspx">Back</asp:LinkButton>
        </div>

        <!-- Image1 -->

        <div class="ShoesContent2">
            <asp:Image CssClass="ShoesImg2" ID="Img1" runat="server" ImageUrl="~/Shoes/shoes1.jpeg"/>
            <div>
                <p class="ShoesDesc2">
                    Experience the perfect blend of durability and elegance with our premium Sandle (Polyurethane) Chappals. Designed for everyday use, these chappals are lightweight, flexible, and built to provide maximum comfort.
                </p>

                <asp:Label CssClass="ddlisttitle" ID="ddtitle1" runat="server" Text="Size"></asp:Label>
                <asp:DropDownList CssClass="ddlist1" ID="dd1" runat="server">
                    <asp:ListItem Value="">Select Size</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                </asp:DropDownList>

                <asp:Label CssClass="ddquantitytitle" ID="ddtitlequantity1" runat="server" Text="Quantity"></asp:Label>
                <asp:DropDownList CssClass="ddquantity" ID="ddq1" runat="server">
                    <asp:ListItem Value="">Select Quantity</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>

                <asp:Label CssClass="Lofarbl1" ID="lbl1" runat="server" Text="Price(Rs.):"></asp:Label>
                <asp:Label ID="lblShoes" runat="server" Text="Shoes" Visible="false"></asp:Label>  <!-- Pass Query_String -->
                <asp:TextBox CssClass="Shoestxt1" ID="t1" runat="server" ReadOnly="true" Enabled="false" Text="300" Font-Bold="true"></asp:TextBox>
                <asp:Button CssClass="btnnext1" ID="btnprice1" runat="server" Text="Buy" OnClick="btnprice1_Click1" />
                
                <asp:Label ID="lblmsj1" runat="server" Text="" ForeColor="Red" Font-Bold="true" Font-Size="25px"></asp:Label>
            </div>
        </div>

        <!-- Image2 -->

        <div class="ShoesContent3">
            <asp:Image CssClass="ShoesImg3" ID="Img2" runat="server" ImageUrl="~/Shoes/shoes2.png" />
            <div>
                <p class="ShoesDesc3">
                    Experience the perfect blend of durability and elegance with our premium Sandle (Polyurethane). Designed for everyday use, these Sandle are lightweight, flexible, and built to provide maximum comfort.
                </p>

                <asp:Label CssClass="ddlisttitle" ID="ddtitle2" runat="server" Text="Size"></asp:Label>
                <asp:DropDownList CssClass="ddlist1" ID="dd2" runat="server">
                    <asp:ListItem Value="">Select Size</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                </asp:DropDownList>

                <asp:Label CssClass="ddquantitytitle" ID="ddtitlequantity2" runat="server" Text="Quantity"></asp:Label>
                <asp:DropDownList CssClass="ddquantity" ID="ddq2" runat="server">
                    <asp:ListItem Value="">Select Quantity</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>

                <asp:Label CssClass="Shoesbl1" ID="lbl2" runat="server" Text="Price(Rs.):"></asp:Label>
                <asp:TextBox CssClass="Shoestxt1" ID="t2" runat="server" ReadOnly="true" Enabled="false" Text="500" Font-Bold="true"></asp:TextBox>
                <asp:Button CssClass="btnnext1" ID="btnprice2" runat="server" Text="Buy" OnClick="btnprice2_Click" />
                
                <asp:Label ID="lblmsj2" runat="server" Text="" ForeColor="Red" Font-Bold="true" Font-Size="25px"></asp:Label>
            </div>
        </div>

        <!-- Image3 -->

        <div class="ShoesContent1">
            <asp:Image CssClass="ShoesImg1" ID="Img3" runat="server" ImageUrl="~/Shoes/shoes3.jpeg"/>
            <div>
                <p class="ShoesDesc1">
                    Experience the perfect blend of durability and elegance with our premium Sandle (Polyurethane). Designed for everyday use, these Sandle are lightweight, flexible, and built to provide maximum comfort.
                </p>

                <asp:Label CssClass="ddlisttitle" ID="ddtitle3" runat="server" Text="Size"></asp:Label>
                <asp:DropDownList CssClass="ddlist1" ID="dd3" runat="server">
                    <asp:ListItem Value="">Select Size</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                </asp:DropDownList>

                <asp:Label CssClass="ddquantitytitle" ID="ddtitlequantity3" runat="server" Text="Quantity"></asp:Label>
                <asp:DropDownList CssClass="ddquantity" ID="ddq3" runat="server">
                    <asp:ListItem Value="">Select Quantity</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>

                <asp:Label CssClass="Shoesbl1" ID="lbl3" runat="server" Text="Price(Rs.):"></asp:Label>
                <asp:TextBox CssClass="Shoestxt1" ID="t3" runat="server" ReadOnly="true" Enabled="false" Text="800" Font-Bold="true"></asp:TextBox>
                <asp:Button CssClass="btnnext1" ID="btnprice3" runat="server" Text="Buy" OnClick="btnprice3_Click" />
                
                <asp:Label ID="lblmsj3" runat="server" Text="" ForeColor="Red" Font-Bold="true" Font-Size="25px"></asp:Label>
            </div>
        </div>

        <!-- Image4 -->

        <div class="ShoesContent1">
            <asp:Image CssClass="ShoesImg1" ID="Img4" runat="server" ImageUrl="Shoes/shoes4.jpg" />
            <div>
                <p class="ShoesDesc1">
                    Experience the perfect blend of durability and elegance with our premium Sandle (Polyurethane) Chappals. Designed for everyday use, these chappals are lightweight, flexible, and built to provide maximum comfort.
                </p>

                <asp:Label CssClass="ddlisttitle" ID="ddtitle4" runat="server" Text="Size"></asp:Label>
                <asp:DropDownList CssClass="ddlist1" ID="dd4" runat="server">
                    <asp:ListItem Value="">Select Size</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                </asp:DropDownList>

                <asp:Label CssClass="ddquantitytitle" ID="ddtitlequantity4" runat="server" Text="Quantity"></asp:Label>
                <asp:DropDownList CssClass="ddquantity" ID="ddq4" runat="server">
                    <asp:ListItem Value="">Select Quantity</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>

                <asp:Label CssClass="Shoesbl1" ID="lbl4" runat="server" Text="Price(Rs.):"></asp:Label>
                <asp:TextBox CssClass="Shoestxt1" ID="t4" runat="server" ReadOnly="true" Enabled="false" Text="1000" Font-Bold="true"></asp:TextBox>
                <asp:Button CssClass="btnnext1" ID="btnprice4" runat="server" Text="Buy" OnClick="btnprice4_Click" />
                
                <asp:Label ID="lblmsj4" runat="server" Text="" ForeColor="Red" Font-Bold="true" Font-Size="25px"></asp:Label>
            </div>
        </div>

        <!-- Image5 -->

        <div class="ShoesContent5">
            <asp:Image CssClass="ShoesImg5" ID="Img5" runat="server" ImageUrl="~/Shoes/shoes5.jpg"/>
            <div>
                <p class="ShoesDesc5">
                    Experience the perfect blend of durability and elegance with our premium Sandle (Polyurethane). Designed for everyday use, these chappals are lightweight, flexible, and built to provide maximum comfort.
                </p>

                <asp:Label CssClass="ddlisttitle" ID="ddtitle5" runat="server" Text="Size"></asp:Label>
                <asp:DropDownList CssClass="ddlist1" ID="dd5" runat="server">
                    <asp:ListItem Value="">Select Size</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                </asp:DropDownList>

                <asp:Label CssClass="ddquantitytitle" ID="ddtitlequantity5" runat="server" Text="Quantity"></asp:Label>
                <asp:DropDownList CssClass="ddquantity" ID="ddq5" runat="server">
                    <asp:ListItem Value="">Select Quantity</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>

                <asp:Label CssClass="Shoesbl1" ID="lbl5" runat="server" Text="Price(Rs.):"></asp:Label>
                <asp:TextBox CssClass="Shoestxt1" ID="t5" runat="server" ReadOnly="true" Enabled="false" Text="1200" Font-Bold="true"></asp:TextBox>
                <asp:Button CssClass="btnnext1" ID="btnprice5" runat="server" Text="Buy" OnClick="btnprice5_Click" />
                
                <asp:Label ID="lblmsj5" runat="server" Text="" ForeColor="Red" Font-Bold="true" Font-Size="25px"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
