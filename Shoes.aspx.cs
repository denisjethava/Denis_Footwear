using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;

namespace Denis_Footwear
{
    public partial class Shoes : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=DESKTOP-4B7ROGE\\SQLEXPRESS;Initial Catalog=Footwear;Integrated Security=True;Encrypt=False");
            con.Open();
        }

        protected void btnprice1_Click1(object sender, EventArgs e)
        {
            if (Session["IsRegistered"] == null || (bool)Session["IsRegistered"] == false)
            {
                Response.Redirect("Registration.aspx?message=Please Register Or Login To Access this page.");
            }

            string SelectedSize = dd1.SelectedValue;

            int SelectedQuantity;
            if (!int.TryParse(ddq1.Text, out SelectedQuantity))
            {
                lblmsj1.Text = "Please enter a valid quantity.";
                return;
            }

            decimal price;
            if (!decimal.TryParse(t1.Text, out price))
            {
                lblmsj1.Text = "Please enter a valid price.";
                return;
            }

            decimal total = SelectedQuantity * price;
            string ChappleShoes = lblShoes.Text;

            if (dd1.SelectedValue == "" || ddq1.SelectedValue == "")
            {
                lblmsj1.Text = "Please Select Size";
            }
            else
            {

                string query = "INSERT INTO Shoes (Chapple,Size, Quantity, Price,Total) VALUES (@Chapple,@Size, @Quantity, @Price,@Total)";
                cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@Chapple", ChappleShoes);
                cmd.Parameters.AddWithValue("@Size", SelectedSize);
                cmd.Parameters.AddWithValue("@Quantity", SelectedQuantity);
                cmd.Parameters.AddWithValue("@Price", price);
                cmd.Parameters.AddWithValue("@Total", total);


                try
                {
                    int res = cmd.ExecuteNonQuery();
                    if (res > 0)
                    {
                        Response.Redirect($"BillPage.aspx?Chapple={ChappleShoes}&Size={SelectedSize}&Quantity={SelectedQuantity}&Price={price}&Total={total}");
                        lblmsj1.Text = "Purchase successful!";
                        lblmsj1.ForeColor = Color.Green;
                    }
                    else
                    {
                        lblmsj1.Text = "Purchase failed. Please try again.";
                        lblmsj1.ForeColor = Color.Red;
                    }
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }

        }

        protected void btnprice2_Click(object sender, EventArgs e)
        {
            if (Session["IsRegistered"] == null || (bool)Session["IsRegistered"] == false)
            {
                Response.Redirect("Registration.aspx?message=Please Register Or Login To Access this page.");
            }

            string SelectedSize = dd2.SelectedValue;

            int SelectedQuantity;
            if (!int.TryParse(ddq2.Text, out SelectedQuantity))
            {
                lblmsj2.Text = "Please enter a valid quantity.";
                return;
            }

            decimal price;
            if (!decimal.TryParse(t2.Text, out price))
            {
                lblmsj2.Text = "Please enter a valid price.";
                return;
            }

            decimal total = SelectedQuantity * price;
            string ChappleShoes = lblShoes.Text;

            if (dd2.SelectedValue == "" || ddq2.SelectedValue == "")
            {
                lblmsj2.Text = "Please Select Size";
            }
            else
            {

                string query = "INSERT INTO Shoes (Chapple,Size, Quantity, Price,Total) VALUES (@Chapple,@Size, @Quantity, @Price,@Total)";
                cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@Chapple", ChappleShoes);
                cmd.Parameters.AddWithValue("@Size", SelectedSize);
                cmd.Parameters.AddWithValue("@Quantity", SelectedQuantity);
                cmd.Parameters.AddWithValue("@Price", price);
                cmd.Parameters.AddWithValue("@Total", total);


                try
                {
                    int res = cmd.ExecuteNonQuery();
                    if (res > 0)
                    {
                        Response.Redirect($"BillPage.aspx?Chapple={ChappleShoes}&Size={SelectedSize}&Quantity={SelectedQuantity}&Price={price}&Total={total}");
                        lblmsj2.Text = "Purchase successful!";
                        lblmsj2.ForeColor = Color.Green;
                    }
                    else
                    {
                        lblmsj2.Text = "Purchase failed. Please try again.";
                        lblmsj2.ForeColor = Color.Red;
                    }
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
        }

        protected void btnprice3_Click(object sender, EventArgs e)
        {
            if (Session["IsRegistered"] == null || (bool)Session["IsRegistered"] == false)
            {
                Response.Redirect("Registration.aspx?message=Please Register Or Login To Access this page.");
            }

            string SelectedSize = dd1.SelectedValue;

            int SelectedQuantity;
            if (!int.TryParse(ddq3.Text, out SelectedQuantity))
            {
                lblmsj3.Text = "Please enter a valid quantity.";
                return;
            }

            decimal price;
            if (!decimal.TryParse(t3.Text, out price))
            {
                lblmsj3.Text = "Please enter a valid price.";
                return;
            }

            decimal total = SelectedQuantity * price;
            string ChappleShoes = lblShoes.Text;

            if (dd3.SelectedValue == "" || ddq3.SelectedValue == "")
            {
                lblmsj3.Text = "Please Select Size";
            }
            else
            {

                string query = "INSERT INTO Shoes (Chapple,Size, Quantity, Price,Total) VALUES (@Chapple,@Size, @Quantity, @Price,@Total)";
                cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@Chapple", ChappleShoes);
                cmd.Parameters.AddWithValue("@Size", SelectedSize);
                cmd.Parameters.AddWithValue("@Quantity", SelectedQuantity);
                cmd.Parameters.AddWithValue("@Price", price);
                cmd.Parameters.AddWithValue("@Total", total);


                try
                {
                    int res = cmd.ExecuteNonQuery();
                    if (res > 0)
                    {
                        Response.Redirect($"BillPage.aspx?Chapple={ChappleShoes}&Size={SelectedSize}&Quantity={SelectedQuantity}&Price={price}&Total={total}");
                        lblmsj3.Text = "Purchase successful!";
                        lblmsj3.ForeColor = Color.Green;
                    }
                    else
                    {
                        lblmsj3.Text = "Purchase failed. Please try again.";
                        lblmsj3.ForeColor = Color.Red;
                    }
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
        }

        protected void btnprice4_Click(object sender, EventArgs e)
        {
            if (Session["IsRegistered"] == null || (bool)Session["IsRegistered"] == false)
            {
                Response.Redirect("Registration.aspx?message=Please Register Or Login To Access this page.");
            }

            string SelectedSize = dd4.SelectedValue;

            int SelectedQuantity;
            if (!int.TryParse(ddq4.Text, out SelectedQuantity))
            {
                lblmsj4.Text = "Please enter a valid quantity.";
                return;
            }

            decimal price;
            if (!decimal.TryParse(t4.Text, out price))
            {
                lblmsj4.Text = "Please enter a valid price.";
                return;
            }

            decimal total = SelectedQuantity * price;
            string ChappleShoes = lblShoes.Text;

            if (dd4.SelectedValue == "" || ddq4.SelectedValue == "")
            {
                lblmsj4.Text = "Please Select Size";
            }
            else
            {

                string query = "INSERT INTO Shoes (Chapple,Size, Quantity, Price,Total) VALUES (@Chapple,@Size, @Quantity, @Price,@Total)";
                cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@Chapple", ChappleShoes);
                cmd.Parameters.AddWithValue("@Size", SelectedSize);
                cmd.Parameters.AddWithValue("@Quantity", SelectedQuantity);
                cmd.Parameters.AddWithValue("@Price", price);
                cmd.Parameters.AddWithValue("@Total", total);


                try
                {
                    int res = cmd.ExecuteNonQuery();
                    if (res > 0)
                    {
                        Response.Redirect($"BillPage.aspx?Chapple={ChappleShoes}&Size={SelectedSize}&Quantity={SelectedQuantity}&Price={price}&Total={total}");
                        lblmsj4.Text = "Purchase successful!";
                        lblmsj4.ForeColor = Color.Green;
                    }
                    else
                    {
                        lblmsj4.Text = "Purchase failed. Please try again.";
                        lblmsj4.ForeColor = Color.Red;
                    }
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
        }

        protected void btnprice5_Click(object sender, EventArgs e)
        {
            if (Session["IsRegistered"] == null || (bool)Session["IsRegistered"] == false)
            {
                Response.Redirect("Registration.aspx?message=Please Register Or Login To Access this page.");
            }

            string SelectedSize = dd5.SelectedValue;

            int SelectedQuantity;
            if (!int.TryParse(ddq5.Text, out SelectedQuantity))
            {
                lblmsj5.Text = "Please enter a valid quantity.";
                return;
            }

            decimal price;
            if (!decimal.TryParse(t5.Text, out price))
            {
                lblmsj5.Text = "Please enter a valid price.";
                return;
            }

            decimal total = SelectedQuantity * price;
            string ChappleShoes = lblShoes.Text;

            if (dd5.SelectedValue == "" || ddq5.SelectedValue == "")
            {
                lblmsj5.Text = "Please Select Size";
            }
            else
            {

                string query = "INSERT INTO Shoes (Chapple,Size, Quantity, Price,Total) VALUES (@Chapple,@Size, @Quantity, @Price,@Total)";
                cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@Chapple", ChappleShoes);
                cmd.Parameters.AddWithValue("@Size", SelectedSize);
                cmd.Parameters.AddWithValue("@Quantity", SelectedQuantity);
                cmd.Parameters.AddWithValue("@Price", price);
                cmd.Parameters.AddWithValue("@Total", total);


                try
                {
                    int res = cmd.ExecuteNonQuery();
                    if (res > 0)
                    {
                        Response.Redirect($"BillPage.aspx?Chapple={ChappleShoes}&Size={SelectedSize}&Quantity={SelectedQuantity}&Price={price}&Total={total}");
                        lblmsj5.Text = "Purchase successful!";
                        lblmsj5.ForeColor = Color.Green;
                    }
                    else
                    {
                        lblmsj5.Text = "Purchase failed. Please try again.";
                        lblmsj5.ForeColor = Color.Red;
                    }
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
        }
    }
}

