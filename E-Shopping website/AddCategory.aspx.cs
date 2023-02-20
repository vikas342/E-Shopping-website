using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Shopping_website
{
    public partial class AddCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindCategoryRepeater();
        }

        private void BindCategoryRepeater()
        {

           

                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDb"].ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("select * from tblCategory", con))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            rptrCategories.DataSource = dt;
                            rptrCategories.DataBind();

                        }

                    }



                }

          

        }

        protected void btnAddCategory_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDb"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblCategory(CatName) Values('" + txtCategory.Text + "')", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('Category Added Successfully'); </script>");

                txtCategory.Text = string.Empty;
                con.Close();

                txtCategory.Focus();



            }
            BindCategoryRepeater();
        }
    }
}