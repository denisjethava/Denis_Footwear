using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Denis_Footwear
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=DESKTOP-4B7ROGE\\SQLEXPRESS;Initial Catalog=Footwear;Integrated Security=True;Encrypt=False");
            con.Open();

            if (!IsPostBack && Request.QueryString["message"] != null)
            {
                MessageLabel.Text = Request.QueryString["message"];
            }
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string UserName = txtfnm.Text;
            string Password = txtpass.Text;

            string query = "select count(*) from Register where Fnm=@UserName and Pass=@Password ";
            cmd=new SqlCommand(query,con);

            cmd.Parameters.AddWithValue("@UserName", UserName);
            cmd.Parameters.AddWithValue("@Password", Password);
            
            int count = (int) cmd.ExecuteScalar(); // Execute the query and get the count of matching records

            if (count > 0) 
            {
                Response.Write("<script>alert('Login SuccessFully')</script>");
                Session["IsRegistered"] = true;
                Response.Redirect("WebForm1.aspx");
            }    
            else
            {
                Response.Write("<script>alert('Invalid Username or Password')</script>");
            }
        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }
}