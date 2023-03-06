using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ghar_ka_khana
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void homebtn_Click(object sender, ImageClickEventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["email"] == null)
                {
                    Response.Redirect("CommonHome.aspx");
                }
                else
                {
                    Response.Redirect("customer/Customer_home.aspx");
                }
            }
        }

        protected void homebtn_Click1(object sender, ImageClickEventArgs e)
        {

        }
    }
}