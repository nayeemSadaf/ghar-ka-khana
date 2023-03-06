﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace ghar_ka_khana
{
    public partial class productsDetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["email"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
            }


            int products_id = int.Parse(Request.QueryString["products_id"]);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from products where products_id=" + products_id, con);

            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                lblProductID.Text = products_id.ToString();
                lblProductName.Text = dr[1].ToString();
                lblProductPrice.Text = dr[3].ToString();
                lblServicesDetails.Text = dr[2].ToString();

                //Image1.ImageUrl = dr[3].ToString();
                lblfarImg.Text = "<img class='img-responsive' src='productHandler.ashx?products_id=" + products_id.ToString() + "' alt='' />";
                lblAmount.Text = CalculateAmount(txtQuantity.Text, dr[3].ToString());
            }

            dr.Close();

            cmd.Dispose();

            con.Close();
        }

        private string CalculateAmount(string Quantity, string Price)
        {
            int qty = int.Parse(Quantity);
            Decimal price = Decimal.Parse(Price);
            Decimal amount = qty * price;
            return amount.ToString();
        }

        protected void txtQuantity_TextChanged(object sender, EventArgs e)
        {
            lblAmount.Text = CalculateAmount(txtQuantity.Text, lblProductPrice.Text);
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            con.Open();

            string query = "insert into Cart (ProductID, Quantity, Price, Amount, CartID, ProductName) values (" + lblProductID.Text + ", " + txtQuantity.Text + ", " + lblProductPrice.Text + ", " + lblAmount.Text + ", '" + Session.SessionID + "', '" + lblProductName.Text + "')";
            //string query = "insert into Cart (ProductID, Quantity, Price, Amount, CartID) values (" + lblProductID.Text + ", " + txtQuantity.Text + ", " + lblProductPrice.Text + ", " + lblAmount.Text + ")";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            Session["CartID"] = Session.SessionID;
            cmd.Dispose();
            con.Close();
            ClientScript.RegisterStartupScript(GetType(), "Popup", "successalert();", true);
        }
    }
}