using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.IO;
using System.Security.Cryptography;
using System.Text;

namespace ghar_ka_khana.admin
{
    public partial class editUser : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //    //Bind_ddlCountry();



                con.Open();
                string user_id = Request.QueryString["user_id"].ToString();
                string qr = "select * from [user_info] where user_id=" + user_id;
                SqlCommand cmd = new SqlCommand(qr, con);
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                con.Close();
                
                fname.Text = ds.Tables[0].Rows[0]["first_name"].ToString();
                lname.Text = ds.Tables[0].Rows[0]["last_name"].ToString();
                email.Text = ds.Tables[0].Rows[0]["email_id"].ToString();
                mobile.Text = ds.Tables[0].Rows[0]["mobile"].ToString();
                lblImg.Text = "<img src='usrHandler.ashx?sadaf=" + user_id + "'/>";
                
            }

        }

        protected void updatUsrSbt_Click(object sender, EventArgs e)
        {

        }
    }
}