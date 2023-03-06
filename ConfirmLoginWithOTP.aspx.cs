using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
using System.IO;
using System.Text;
using System.Net.Mail;

namespace ghar_ka_khana
{
    public partial class ConfirmLoginWithOTP : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLgnCOTPSbt_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand loginWithOTP = new SqlCommand("select first_name,email_id,user_id,loginOTPRequestTime from [user_info] where email_id=@email_id and loginOTP=@otp and loginOTP !=''", con);
            loginWithOTP.Parameters.AddWithValue("email_id", email.Text.ToString());
            loginWithOTP.Parameters.AddWithValue("otp", otp.Text);
            SqlDataReader read = loginWithOTP.ExecuteReader();
            if (read.Read())
            {

                var start = DateTime.Now;
                var oldTime = DateTime.Parse(read.GetValue(3).ToString().Trim());
                if (start.Subtract(oldTime) <= TimeSpan.FromMinutes(10))
                {
                    Session["first_name"] = read.GetValue(0).ToString();
                    Session["email_id"] = read.GetValue(1).ToString();
                    Session["user_id"] = read.GetValue(2).ToString();
                    //Session["usertype"] = "admin";
                    con.Close();



                    string qr = "update [user_info] set loginOTP='', loginOTPRequestTime='' where email_id ='" + email.Text.ToString() + "'";
                    con.Open();
                    SqlCommand updateUserCmd = new SqlCommand(qr, con);
                    updateUserCmd.ExecuteNonQuery();
                    con.Close();



                    Response.Redirect("CommonHome.aspx");
                }
                else
                {
                    lblErrorMsg.Text = "Your OTP is expired. OTP is Valid for 10 min only.";
                    lblErrorMsg.ForeColor = System.Drawing.Color.Red;
                    con.Close();
                }
            }
            else
            {
                lblErrorMsg.Text = "Your OTP is expired.";
                lblErrorMsg.ForeColor = System.Drawing.Color.Red;
                con.Close();
            }
        }
    }
}