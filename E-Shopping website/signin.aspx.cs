﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Xml.Linq;

namespace E_Shopping_website
{
    public partial class signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Request.Cookies["UNAME"] !=null && Request.Cookies["UPWD"] != null)
                {
                    txtUsername.Text = Request.Cookies["UNAME"].Value;
                    txtPass.Text = Request.Cookies["UPWD"].Value;
                    CheckBox1.Checked = true;   

                }
            }

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDb"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblUsers where Username=@username and Password=@pwd", con);

                cmd.Parameters.AddWithValue("@username", txtUsername.Text);
                cmd.Parameters.AddWithValue("@pwd", txtPass.Text);

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt= new DataTable();
                sda.Fill(dt);
                if(dt.Rows.Count !=0)
                {

                    if (CheckBox1.Checked)
                    {
                        Response.Cookies["UNAME"].Value = txtUsername.Text;
                        Response.Cookies["UPWD"].Value = txtPass.Text;



                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(20);
                        Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(20);



                    }
                    else
                    {
                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddHours(2);
                        Response.Cookies["UPWD"].Expires = DateTime.Now.AddHours(2);

                    }

                    string Utype;
                    Utype = dt.Rows[0][5].ToString().Trim();

                    if (Utype=="User")
                    {
                    Session["Username"] = txtUsername.Text;
                    Response.Redirect("~/userHome.aspx");
                    }
                    else if (Utype == "Admin")
                    {
                        Session["Username"] = txtUsername.Text;
                        Response.Redirect("~/AdminHome.aspx");
                    }

                }
                else
                {
                    lblError.Text = "Invalid Username and Password";
                }
               // Response.Write("<script> alert('Login sucessfully done'); </script>");
                clr();
                con.Close();



            }

        }

        private void clr()
        {
            txtUsername.Focus();
            txtUsername.Text=string.Empty;
            txtPass.Text=string.Empty;
        }
    }
}