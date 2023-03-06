using System;
using System.IO;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;

namespace ghar_ka_khana
{
    public partial class MyProfile : System.Web.UI.Page
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
                string qr = "select * from [user_info] where email_id = '" + Session["email"] + "'";
                con.Open();
                SqlCommand cmd = new SqlCommand(qr, con);
                SqlDataAdapter ad = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                ad.Fill(ds);
                con.Close();
                //Image1.ImageUrl = "photoHandler.ashx?user_id=" + Session["user_id"];
                first_name.Text = ds.Tables[0].Rows[0]["first_name"].ToString();
                last_name.Text = ds.Tables[0].Rows[0]["last_name"].ToString();
                email1.Text = ds.Tables[0].Rows[0]["email_id"].ToString();
                phone.Text = ds.Tables[0].Rows[0]["mobile"].ToString();
                gender.Text = ds.Tables[0].Rows[0]["gender"].ToString();
                //address.Text = ds.Tables[0].Rows[0][""].ToString();
                house.Text = ds.Tables[0].Rows[0]["house_no"].ToString();
                land_mark.Text = ds.Tables[0].Rows[0]["landmark"].ToString();
                pin.Text = ds.Tables[0].Rows[0]["pincode"].ToString();
            }
        }
    }
}