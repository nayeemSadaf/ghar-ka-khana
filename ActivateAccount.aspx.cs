using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;


namespace ghar_ka_khana
{
    public partial class ActivateAccount : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["email"] != null)
                {
                    Response.Redirect("CommonHome.aspx");
                }
                string activation_code = Request.QueryString["activation_code"].ToString();
                string email_id1 = Request.QueryString["email"].ToString();
                string email = Base64Decode(email_id1);

                if (con.State == ConnectionState.Closed)
                    con.Open();

                string cmds = "select email_id,activation_code from [user_info] where email_id = '" + email.ToString() + "' and activation_code = '" + activation_code.ToString() + "' and is_active = 0 and activation_code !=''";
                SqlCommand checkemail = new SqlCommand(cmds, con);
                SqlDataReader read = checkemail.ExecuteReader();
                if (read.Read())
                {
                    lblErrorMsg.Text = "Link is expired we are in if.";
                    lblErrorMsg.ForeColor = System.Drawing.Color.Red;
                    con.Close();
                    string qr = "update [user_info] set is_active=1, activation_code='' where email_id ='" + email.ToString() + "'";
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

        public static string Base64Decode(string base64EncodedData)
        {
            var base64EncodedBytes = System.Convert.FromBase64String(base64EncodedData);
            return System.Text.Encoding.UTF8.GetString(base64EncodedBytes);
        }
    }
}