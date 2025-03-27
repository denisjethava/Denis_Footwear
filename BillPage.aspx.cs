using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;


namespace Denis_Footwear
{
    public partial class BillPage : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=DESKTOP-4B7ROGE\\SQLEXPRESS;Initial Catalog=Footwear;Integrated Security=True;Encrypt=False");
            con.Open();

            lblmessage.Text = "<script>alert('Purchase Successfully')</script>";

            if (!IsPostBack)
            {
                string chplpu = Request.QueryString["Chapple"];
                string size = Request.QueryString["Size"];
                string quantity = Request.QueryString["Quantity"];
                string price = Request.QueryString["Price"];
                string total = Request.QueryString["Total"];

                lblchapplepu.Text = chplpu;
                lblSize.Text = size;
                lblQuantity.Text = quantity;
                lblPrice.Text = price;
                lblTotal.Text = total;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Set response for PDF download
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=BillDetails.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);


            // Create PDF Document
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 10f);
            PdfWriter writer = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();


            // Table for header
            PdfPTable headerTable = new PdfPTable(2);
            headerTable.WidthPercentage = 100;
            headerTable.SetWidths(new float[] { 1, 3 }); // Column widths


            // Load and scale logo
            string logoPath = Server.MapPath("BillLogo.png");
            iTextSharp.text.Image img = iTextSharp.text.Image.GetInstance(logoPath);
            img.ScaleToFit(70f, 70f);


            PdfPCell logoCell = new PdfPCell(img) { Border = Rectangle.NO_BORDER, HorizontalAlignment = Element.ALIGN_CENTER };
            PdfPCell textCell = new PdfPCell(new Phrase("Denis Footwear", FontFactory.GetFont("Arial", 20, Font.BOLD)))
            {
                Border = Rectangle.NO_BORDER,
                VerticalAlignment = Element.ALIGN_MIDDLE,
                HorizontalAlignment = Element.ALIGN_LEFT
            };


            // Add cells to header table
            headerTable.AddCell(logoCell);
            headerTable.AddCell(textCell);

            // Add header table to document
            pdfDoc.Add(headerTable);

            // Add additional content (bill table)
            PdfPTable billTable = new PdfPTable(5); // Example for bill details table
            billTable.WidthPercentage = 100;
            billTable.SetWidths(new float[] { 2, 1, 1, 1, 1 });

            // Add table headers
            billTable.AddCell("Chapple");
            billTable.AddCell("Size");
            billTable.AddCell("Quantity");
            billTable.AddCell("Price");
            billTable.AddCell("Total");

            // Retrieve dynamic values (example: from QueryString)
            string chapple = Request.QueryString["Chapple"] ?? "N/A";
            string size = Request.QueryString["Size"] ?? "0";
            string quantity = Request.QueryString["Quantity"] ?? "0";
            string price = Request.QueryString["Price"] ?? "0";
            string total = Request.QueryString["Total"] ?? "0";

            // Add bill details dynamically
            billTable.AddCell(chapple);   
            billTable.AddCell(size);      
            billTable.AddCell(quantity);  
            billTable.AddCell(price);     
            billTable.AddCell(total);

            pdfDoc.Add(billTable);  // Add bill table to the document

            pdfDoc.Close(); // Close PDF document

            Response.Write(pdfDoc);  // Complete response
            Response.End();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Pu.aspx");
        }

        protected void btncontinue_Click(object sender, EventArgs e)
        {
            Response.Redirect("Kolapuri.aspx");
        }

    }
}

