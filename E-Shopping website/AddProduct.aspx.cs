using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Shopping_website
{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //when page first time loads this code will execute
                BindBrand();
                BindCategory();
                BindGender();

                ddlGender.Enabled= false;
            }

        }
        private void BindBrand()
        {

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDb"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(" select * from tblBrands", con);

                SqlDataAdapter sda = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();

                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {
                    ddlbrand.DataSource = dt;
                    ddlbrand.DataTextField = "Name";
                    ddlbrand.DataValueField = "BrandId";
                    ddlbrand.DataBind();
                    ddlbrand.Items.Insert(0, new ListItem("-select-", "0"));
                }


            }

        }
        private void BindCategory()
        {

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDb"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(" select * from tblCategory", con);

                SqlDataAdapter sda = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();

                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {
                    ddlCategory.DataSource = dt;
                    ddlCategory.DataTextField = "CatName";
                    ddlCategory.DataValueField = "CatId";
                    ddlCategory.DataBind();
                    ddlCategory.Items.Insert(0, new ListItem("-select-", "0"));
                }


            }

        }

        private void BindGender()
        {

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDb"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(" select * from tblGender", con);

                SqlDataAdapter sda = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();

                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {
                    ddlGender.DataSource = dt;
                    ddlGender.DataTextField = "GenderName";
                    ddlGender.DataValueField = "GenderId";
                    ddlGender.DataBind();
                    ddlGender.Items.Insert(0, new ListItem("-select-", "0"));
                }


            }

        }


        protected void btnAdd_Click(object sender, EventArgs e)
        {

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDb"].ConnectionString))

            {
                SqlCommand cmd = new SqlCommand("sp_InsertProduct", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@PName", txtProductName.Text);
                cmd.Parameters.AddWithValue("@PPrice", txtPrice.Text);
                cmd.Parameters.AddWithValue("@PSelPrice", txtsellPrice.Text);
                cmd.Parameters.AddWithValue("@PBrandID", ddlbrand.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@PCategoryID", ddlCategory.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@PSubCatID", ddlSubCategory.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@PGender", ddlGender.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@PDescription", txtDescription.Text);
                cmd.Parameters.AddWithValue("@PProductDetails", txtPDetail.Text);
                cmd.Parameters.AddWithValue("@PMaterialCare", txtMatcare.Text);
                if (chFD.Checked == true)
                {
                    cmd.Parameters.AddWithValue("@FreeDelivery", 1.ToString());
                }
                else
                {
                    cmd.Parameters.AddWithValue("@FreeDelivery", 0.ToString());
                }

                if (ch30Ret.Checked == true)
                {
                    cmd.Parameters.AddWithValue("@30DayRet", 1.ToString());
                }
                else
                {
                    cmd.Parameters.AddWithValue("@30DayRet", 0.ToString());
                }
                if (cbCOD.Checked == true)
                {
                    cmd.Parameters.AddWithValue("@COD", 1.ToString());
                }
                else
                {
                    cmd.Parameters.AddWithValue("@COD", 0.ToString());
                }
                if (con.State == ConnectionState.Closed) { con.Open(); }
                Int64 PID = Convert.ToInt64(cmd.ExecuteScalar());




            }
        }

        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            int MainCategoryID = Convert.ToInt32(ddlCategory.SelectedItem.Value);

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDb"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(" select * from tblSUBCategory where MainCatID='" + ddlCategory.SelectedItem.Value + "'", con);

                SqlDataAdapter sda = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();

                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {
                    ddlSubCategory.DataSource = dt;
                    ddlSubCategory.DataTextField = "SubCatName";
                    ddlSubCategory.DataValueField = "SubCatId";
                    ddlSubCategory.DataBind();
                    ddlSubCategory.Items.Insert(0, new ListItem("-select-", "0"));
                }


            }
        }

        protected void ddlGender_SelectedIndexChanged(object sender, EventArgs e)
        {

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDb"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(" select * from tblSizes where BrandId='" + ddlbrand.SelectedItem.Value + "' and CategoryId='" + ddlCategory.SelectedItem.Value + "' and SubCategoryID='" + ddlSubCategory.SelectedItem.Value + "' and GenderID='" + ddlGender.SelectedItem.Value + "' ", con);

                SqlDataAdapter sda = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();

                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {
                    cblSize.DataSource = dt;
                    cblSize.DataTextField = "SizeName";
                    cblSize.DataValueField = "SizeId";
                    cblSize.DataBind();
                }


            }
        }

        protected void ddlSubCategory_SelectedIndexChanged(object sender, EventArgs e)
        {

            if(ddlSubCategory.SelectedIndex != 0)
            {
            ddlGender.Enabled = true;

            }
            else
            {
                ddlGender.Enabled=false;
            }
        }
    }
}