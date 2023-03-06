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
    public partial class ResetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
            if (!IsPostBack)
            {
                string ResetCode = Request.QueryString["ResetCode"].ToString();
                string email = Request.QueryString["email_id"].ToString();

                if (con.State == ConnectionState.Closed)
                    con.Open();

                string cmds = "select email_id,ResetCode from [user_info] where email_id='" + email.ToString() + "' and ResetCode = '" + ResetCode.ToString() + "' and ResetCode !=''";
                SqlCommand checkemail = new SqlCommand(cmds, con);
                SqlDataReader read = checkemail.ExecuteReader();
                if (!read.HasRows)
                {
                    lblErrorMsg.Text = "Link is expired.";
                    lblErrorMsg.ForeColor = System.Drawing.Color.Red;
                    con.Close();
                }
            }
        }
        protected void btnResetSbt_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
            string ResetCode = Request.QueryString["ResetCode"].ToString();
            string email = Request.QueryString["email_id"].ToString();

            if (con.State == ConnectionState.Closed)
                con.Open();

            string cmds = "select email_id,ResetCode from [users] where email_id ='" + email.ToString() + "' and ResetCode = '" + ResetCode.ToString() + "' and ResetCode !=''";
            SqlCommand checkemail = new SqlCommand(cmds, con);
            SqlDataReader read = checkemail.ExecuteReader();
            if (read.Read())
            {
                con.Close();
                string qr = "update [user_info] set pass_word='" + password.ToString() + "', ResetCode='' where email_id ='" + email.ToString() + "'";
                con.Open();
                SqlCommand updateUserCmd = new SqlCommand(qr, con);
                updateUserCmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Login.aspx");
            }
            else
            {
                lblErrorMsg.Text = "Link is expired.";
                lblErrorMsg.ForeColor = System.Drawing.Color.Red;
                con.Close();
            }

        }
    }
}