using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace E_Shopping_website
{
    public partial class signup : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtsignup_Click(object sender, EventArgs e)
        {
            if (isformvalid())
            {
                using(SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDb"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into tblUsers (Username,Password,Email,Name,Usertype) Values('" + txtUname.Text + "','" + txtPass.Text + "','" + txtEmail.Text + "','" + txtName.Text + "','User')", con);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script> alert('Regestration sucessfully done'); </script>");
                    clr();
                    con.Close();



                }
                    Response.Redirect("~/signin.aspx");

            }
            else
            {
                Response.Write("<script> alert('Regestration Failed'); </script>");

            }

        }

        private bool isformvalid()
        {
            if (txtUname.Text == "")
            {
                Response.Write("<script> alert('username is not valid');</script>");
                txtUname.Focus();
                return false;
            }else if (txtPass.Text=="")
            {
                Response.Write("<script> alert('Password is not valid');</script>");
                txtPass.Focus();

                return false;
            }
            else if (txtPass.Text != txtCPass.Text)
            {
                Response.Write("<script> alert('confirm password is not valid');</script>");
                txtCPass.Focus();

                return false;
            }

            else if (txtEmail.Text == "")
            {
                Response.Write("<script> alert('Email is not valid');</script>");
                txtEmail.Focus();

                return false;
            }
            else if (txtName.Text == "")
            {
                Response.Write("<script> alert('Name is not valid');</script>");
                txtName.Focus();

                return false;
            }

            return true;
        }

        private  void clr()
        {
            txtUname.Text=string.Empty;
            txtName.Text = string.Empty;
            txtPass.Text= string.Empty;
            txtEmail.Text= string.Empty;
            txtCPass.Text= string.Empty;
            txtEmail.Text= string.Empty;


        }
    }

}