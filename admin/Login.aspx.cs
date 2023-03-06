using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
using System.Drawing;
using System.IO;
using System.Text;
using System;

namespace ghar_ka_khana.admin
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin_id"] != null)
            {
                Response.Redirect("Dashboard.aspx");
            }
        }

        protected void adminLgBtn_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand checkAdmin = new SqlCommand("select admin_id, is_active from [admin] where admin_email_id=@email2 and admin_pass_word=@pwd", con);
            checkAdmin.Parameters.AddWithValue("email2", email.Text.ToString());//admin_email_id = db, email = textbox, email2 = parameter.
            checkAdmin.Parameters.AddWithValue("pwd", password.Text);
            SqlDataReader read = checkAdmin.ExecuteReader();
            if (read.HasRows)
            {
                con.Close();

                if (con.State == ConnectionState.Closed)
                    con.Open();

                SqlCommand checkUserActive = new SqlCommand("select admin_name, admin_email_id, admin_id from [admin] where admin_email_id=@email2 and admin_pass_word=@pwd and is_active=1", con);
                checkUserActive.Parameters.AddWithValue("email2", email.Text.ToString());//emai_id = db, email = textbox, email2 = parameter.
                checkUserActive.Parameters.AddWithValue("pwd", password.Text);
                SqlDataReader read2 = checkUserActive.ExecuteReader();
                //con.Close();

                if (read2.Read())
                {
                    Session["admin_name"] = read2.GetValue(0).ToString();
                   // Session["last_name"] = read2.GetValue(1).ToString();
                    Session["admin_email_id"] = read2.GetValue(1).ToString();
                    Session["admin_id"] = read2.GetValue(2).ToString();
                    con.Close();
                    Response.Redirect("Dashboard.aspx");
                }
                else
                {
                    lblErrorMsg.Text = "Your account is not active .";
                    lblErrorMsg.ForeColor = System.Drawing.Color.Red;
                    con.Close();
                }
            }
            else
            {
                con.Close();
                lblErrorMsg.Text = "Login credentials are wrong";
                lblErrorMsg.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}