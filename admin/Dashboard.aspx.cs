using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ghar_ka_khana.admin
{
    public partial class Dashboard : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (con.State == ConnectionState.Closed)
                    con.Open();
                SqlCommand totalUsers = new SqlCommand("select count(user_id) as totalUsrs from [user_info]", con);
                SqlDataReader read2 = totalUsers.ExecuteReader();
                if (read2.Read())
                {
                    lbltotUser.Text = read2.GetValue(0).ToString();
                }
                con.Close();
            }
            catch
            {
                lbltotUser.Text = "error";
            }
        }
    }
}