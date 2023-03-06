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
using System.Drawing;


namespace ghar_ka_khana
{
    public partial class EditMyProfile : System.Web.UI.Page
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
                fname.Text = ds.Tables[0].Rows[0]["first_name"].ToString();
                lname.Text = ds.Tables[0].Rows[0]["last_name"].ToString();
                email1.Text = ds.Tables[0].Rows[0]["email_id"].ToString();
                mobile.Text = ds.Tables[0].Rows[0]["mobile"].ToString();
                //gender.Text = ds.Tables[0].Rows[0]["gender"].ToString();
                house_no.Text = ds.Tables[0].Rows[0]["house_no"].ToString();
                landmark.Text = ds.Tables[0].Rows[0]["landmark"].ToString();
                pincode.Text = ds.Tables[0].Rows[0]["pincode"].ToString();
                //address.Text = ds.Tables[0].Rows[0]["address"].ToString();

            }
        }
        protected void updateprofile_Click(object sender, EventArgs e)
        {
            
            string qr;
            qr = "update [user_info] set first_name='" + fname.Text.Trim() + "',last_name='" + lname.Text.Trim() + "',mobile='" + mobile.Text.Trim() + "', house_no='" + house_no.Text.Trim() + "',landmark='" + landmark.Text.Trim() + "',pincode='" + pincode.Text.Trim() + "' where user_id='" + Session["user_id"] + "'";

            con.Open();
            SqlCommand cmd = new SqlCommand(qr, con);
            //cmd.CommandText = qr;
            //cmd.Parameters.AddWithValue("@ph", myphoto);
            //cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("MyProfile.aspx");
        }
    }
       
}