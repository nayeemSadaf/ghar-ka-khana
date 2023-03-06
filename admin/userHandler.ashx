<%@ WebHandler Language="C#" Class="userHandler" %>

using System;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
using System.IO;
using System.Text;

public class userHandler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        string user_id = context.Request.QueryString["sadaf"].ToString();
        string qr = "select photo from [user_info] where user_id=" + user_id;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand(qr, con);
        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        con.Close();
        context.Response.ContentType = "application/Image";
        context.Response.AddHeader("Content-Disposition", "attachment; filename=" + context.Request.QueryString[0].ToString());
        byte[] myphoto = (byte[])ds.Tables[0].Rows[0]["photo"];
        context.Response.BinaryWrite(myphoto);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}