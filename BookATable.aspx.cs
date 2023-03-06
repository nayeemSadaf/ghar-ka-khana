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


namespace ghar_ka_khana
{
    public partial class BookATable : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            con.Open();

            string insertQuery = "insert into [booktable] (first_name, last_name, email, mobile, date, time, people ) values (@firstname, @lastname, @email, @mob, @date, @time, @people)";
            SqlCommand cmd = new SqlCommand(insertQuery, con);
            cmd.Parameters.AddWithValue("@firstname", fname.Text.ToString().Trim());
            cmd.Parameters.AddWithValue("@lastname", lname.Text.ToString().Trim());
            cmd.Parameters.AddWithValue("@email", email.Text.ToString().Trim());
            cmd.Parameters.AddWithValue("@mob", mobile.Text.ToString().Trim());
            cmd.Parameters.AddWithValue("@date", date.Text.ToString().Trim());
            cmd.Parameters.AddWithValue("@time", time.Text.ToString().Trim());
            cmd.Parameters.AddWithValue("@people", people.Text.ToString().Trim());
            //cmd.Parameters.AddWithValue("@pic", mypic);
            cmd.ExecuteNonQuery();
            MailMessage mail = new MailMessage();
            mail.To.Add(email.Text.ToString().Trim());
            mail.From = new MailAddress("anjaliojha495@gmail.com");
            mail.Subject = "Table succesfully booked";
            //mail.Body = "this is body ";
            string emailBody = "";

            emailBody += "<div style='background:#FFFFFF; font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px; margin:0; padding:0;'>";
            emailBody += "<table cellspacing='0' cellpadding='0' border='0' width='100%' style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;'>";
            emailBody += "<tbody>";
            emailBody += "<tr>";
            emailBody += "<td valign='top' style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;'>";
            emailBody += "<div style='width:600px;margin-left:auto;margin-right:auto;clear:both;'>";
            emailBody += "<div style='float:left;width:600px;min-height:35px;font-size:26px;font-weight:bold;text-align:left'>";
            emailBody += "<div style='clear:both;width:100%;text-align:center;'>&nbsp;&nbsp;&nbsp;Ghar ka khana</div>";
            emailBody += "<div style='clear:both;width:100%;text-align:center;font-size:11px;font-style:italic;'>&nbsp;&nbsp;&nbsp;&nbsp;foodies world!</div>";
            emailBody += "</div>";
            emailBody += "</div>";
            emailBody += "</td>";
            emailBody += "</tr>";
            emailBody += "</tbody>";
            emailBody += "</table>";
            emailBody += "<table cellspacing='0' cellpadding='0' border='0' width='600' style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;margin-left:auto;margin-right:auto;'>";
            emailBody += "<tbody>";
            emailBody += "<tr>";
            emailBody += "<td valign='top' colspan='2' style='width:600px;padding-left:20px;padding-right:20px;font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;'>";
            emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;padding-top:15px;line-height:22px;margin:0px;font-weight:bold;padding-bottom:5px'>Hi " + fname.Text + ",</p>";
            //emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:22px;color:rgb(41,41,41)'>Email: </p>";
            //emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:22px;color:rgb(41,41,41)'>Mobile: </p>";
            emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:22px;color:rgb(41,41,41)'>Your table has been successfully booked . You have been alloted seat no 1 and 2.</p>";
            emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:22px;color:rgb(41,41,41)'>Thanks for choosing Ghar ka Khana.We are pleased to serve you,</p>";
            emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:22px;color:rgb(41,41,41)'>Please maintain the discplines of the restaurant.</p>";
            emailBody += "<p>&nbsp;</p><p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:22px;margin:0px'>If you have any additional queries, please feel free to reach out us at +91 9123164498 or drop us an email at <a href='mailto:Websiteweb.com' style='text-decoration:none;font-style:normal;font-variant:normal;font-weight:normal;font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:normal;color:rgb(162,49,35)' target='_blank'>example@domain.com</a>. We are here to help you.</p>";
            emailBody += "<p>&nbsp;</p>";
            emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:22px;margin:0px;font-weight:bold'>Best Regards,</p>";
            emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;color:rgb(41,41,41);line-height:22px;margin:0px'>Ghar ka khana Support</p>";
            //emailBody += "<img src='https://www.chirags.in/images/logo.png' />";
            emailBody += "</td>";
            emailBody += "</tr>";
            emailBody += "</tbody>";
            emailBody += "</table>";
            emailBody += "</div>";

            mail.Body = emailBody;

            mail.IsBodyHtml = true;



            SmtpClient smtp = new SmtpClient();
            smtp.Port = 587; // 25 465
            smtp.EnableSsl = true;
            smtp.UseDefaultCredentials = false;
            smtp.Host = "smtp.gmail.com";
            smtp.Credentials = new System.Net.NetworkCredential("sadaf2016.loh@gmail.com", "ympqudtmyrnyldtb");
            smtp.Send(mail);

            lblErrorMsg.Text = "Your table is successfully booked. Please check your email for your seat number.";
            lblErrorMsg.ForeColor = System.Drawing.Color.Green;
            con.Close();
        }
    }
}