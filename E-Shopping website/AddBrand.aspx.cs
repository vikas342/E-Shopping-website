using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

using System.Data;


namespace E_Shopping_website
{
    public partial class AddBrand : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindBrandRepeater();


        }

        private void BindBrandRepeater()
        {

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDb"].ConnectionString))
            {
                using (SqlCommand cmd= new SqlCommand("select * from tblBrands",con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd)) 
                    { 
                        DataTable dt = new DataTable(); 
                        sda.Fill(dt);
                        rptrBrands.DataSource = dt; 
                        rptrBrands.DataBind();
                    
                    }

                }
                


            }

        }

        protected void btnAddBrand_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDb"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblBrands (Name) Values('" + txtBrand.Text + "')", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('Brand Added Successfully'); </script>");
               
                txtBrand.Text =string.Empty;
                con.Close();

                txtBrand.Focus();



            }

            BindBrandRepeater();
        }
    }
}