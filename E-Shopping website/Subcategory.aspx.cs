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
    public partial class Subcategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindMainCat();
                BindSubCategoryRepeater();
            }

        }

        private void BindSubCategoryRepeater()
        {



            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDb"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("select A. *, B. * from tblSUBCategory A inner join tblCategory B on B.CatId = A.MainCatID", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrSubCategories.DataSource = dt;
                        rptrSubCategories.DataBind();

                    }

                }



            }



        }



        protected void btnAddCategory_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDb"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblSUBCategory (SubCatName,MaincatID) Values('" + txtSubCategory.Text + "','"+ddlMainCatID.SelectedItem.Value +"')", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('SubCategory Added Successfully'); </script>");

                txtSubCategory.Text = string.Empty;

                con.Close();
                ddlMainCatID.ClearSelection();
                ddlMainCatID.Items.FindByValue("0").Selected = true;
                



            }
            BindSubCategoryRepeater();
        }

        private void BindMainCat()
        {

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDb"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(" select * from tblCategory", con);

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
               
                DataTable dt= new DataTable();

                sda.Fill(dt);

                if(dt.Rows.Count != 0)
                {
                    ddlMainCatID.DataSource= dt;
                    ddlMainCatID.DataTextField = "CatName";
                    ddlMainCatID.DataValueField= "CatId";
                    ddlMainCatID.DataBind();
                    ddlMainCatID.Items.Insert(0, new ListItem("-select-","0"));
                }


            }

        }



    }



}