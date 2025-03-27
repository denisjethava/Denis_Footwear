using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Diagnostics;

namespace Denis_Footwear
{
    public partial class Registration : System.Web.UI.Page
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

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string fnm = txtfnm.Text;
            string lnm = txtlnm.Text;
            string dob = txtdob.Text;
            string pass = txtpass.Text;
            string gmail = txtgmail.Text;
            string mono = txtmo.Text;
            string gender = null;
            if(btnmale.Checked==true)
            {
                gender = btnmale.Text;
            }
            else
            {
                gender = btnfemale.Text;
            }

            if (string.IsNullOrEmpty(fnm) || string.IsNullOrEmpty(lnm) || string.IsNullOrEmpty(dob) || string.IsNullOrEmpty(pass) || string.IsNullOrEmpty(gmail) || string.IsNullOrEmpty(mono))
            {
                Response.Write("<script>alert('Please Enter Value In The Field')</script>");
            }
            else
            { 
                string query = "insert into Register(Fnm,Lnm,Dob,Pass,Gmail,MoNo,Gender) values(@Fnm,@Lnm,@Dob,@Pass,@Gmail,@MoNo,@Gender)";
                cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@Fnm", fnm);
                cmd.Parameters.AddWithValue("@Lnm", lnm);
                cmd.Parameters.AddWithValue("@Dob", dob);
                cmd.Parameters.AddWithValue("@Pass", pass);
                cmd.Parameters.AddWithValue("@Gmail", gmail);
                cmd.Parameters.AddWithValue("@MoNo", mono);
                cmd.Parameters.AddWithValue("@Gender", gender);


                int res = cmd.ExecuteNonQuery();
                if (res > 0)
                {
                    Response.Write("<script>alert('Inserted Successfully')</script>");
                    Session["IsRegistered"] = true;
                    Response.Redirect("WebForm1.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Something Wrong')</script>");
                }
            }
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }
}