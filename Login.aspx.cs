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

namespace ghar_ka_khana
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLgnSbt_Click(object sender, System.EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand checkUser = new SqlCommand("select user_id, is_active from [user_info] where email_id=@email2 and pass_word=@pwd", con);
            checkUser.Parameters.AddWithValue("email2", email.Text.ToString());//emai_id = db, email = textbox, email2 = parameter.
            checkUser.Parameters.AddWithValue("pwd", password.Text);
            SqlDataReader read = checkUser.ExecuteReader();
            if (read.HasRows)
            {
                con.Close();

                if (con.State == ConnectionState.Closed)
                    con.Open();

                SqlCommand checkUserActive = new SqlCommand("select first_name, last_name, email_id, user_id from [user_info] where email_id=@email2 and pass_word=@pwd and is_active=1", con);
                checkUserActive.Parameters.AddWithValue("email2", email.Text.ToString());//emai_id = db, email = textbox, email2 = parameter.
                checkUserActive.Parameters.AddWithValue("pwd", password.Text);
                SqlDataReader read2 = checkUserActive.ExecuteReader();
                //con.Close();

                if (read2.Read())
                {
                    Session["first_name"] = read2.GetValue(0).ToString();
                    Session["last_name"] = read2.GetValue(1).ToString();
                    Session["email"] = read2.GetValue(2).ToString();
                    Session["user_id"] = read2.GetValue(3).ToString();
                    con.Close();
                    Response.Redirect("customer/Customer_home.aspx");
                }
                else
                {
                    lblErrorMsg.Text = "Your account is not active please check your email for activation link";
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