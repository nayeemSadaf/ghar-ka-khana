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
using System.Drawing;
using System.IO;
using System.Text;
using System.Net.Mail;

namespace ghar_ka_khana
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnForgotSbt_Click(object sender, EventArgs e)
        {
            if (captchacode.Text.ToLower().ToString() == Session["sessionCaptcha"].ToString())
            {
                if (con.State == ConnectionState.Closed)
                    con.Open();
                SqlCommand checkUser = new SqlCommand("select user_id from [user_info] where email_id=@email2", con);
                checkUser.Parameters.AddWithValue("email2", email.Text.ToString());//emai_id = db, email = textbox, email2 = parameter.
                SqlDataReader read = checkUser.ExecuteReader();
                if (read.HasRows)
                {
                    con.Close();

                    if (con.State == ConnectionState.Closed)
                        con.Open();

                    SqlCommand checkUserActive = new SqlCommand("select user_id from [user_info] where email_id=@email2 and is_active=1", con);
                    checkUserActive.Parameters.AddWithValue("email2", email.Text.ToString());//emai_id = db, email = textbox, email2 = parameter.
                    SqlDataReader read2 = checkUserActive.ExecuteReader();
                    //con.Close();

                    if (read2.Read())
                    {
                        con.Close();

                        Random rnd = new Random();
                        int myRandomCode = rnd.Next(10000000, 99999999);
                       //  string LoginOTP = "555";
                        string ResetCode = myRandomCode.ToString();

                         con.Open();
                        string qr = "update [user_info] set ResetCode ='" + ResetCode + "' where email_id ='" + email.Text.ToString() + "'";
                        SqlCommand updateUserCmd = new SqlCommand(qr, con);
                        updateUserCmd.ExecuteNonQuery();
                        con.Close();

                        //send email
                        MailMessage mail = new MailMessage();
                        mail.To.Add(email.Text.ToString().Trim());
                        mail.From = new MailAddress("anjaliojha495@gmail.com");
                        mail.Subject = "Reset Code for Restaurant Ghar Ka Khana.";
                        //mail.Body = "this is body ";
                        string emailBody = "";

                        emailBody += "this is body ";
                        emailBody += "<div style='background:#FFFFFF; font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px; margin:0; padding:0;'>";
                        emailBody += "<table cellspacing='0' cellpadding='0' border='0' width='100%' style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;'>";
                        emailBody += "<tbody>";
                        emailBody += "<tr>";
                        emailBody += "<td valign='top' style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;'>";
                        emailBody += "<div style='width:600px;margin-left:auto;margin-right:auto;clear:both;'>";
                        emailBody += "<div style='float:left;width:600px;min-height:35px;font-size:26px;font-weight:bold;text-align:left'>";
                        emailBody += "<div style='clear:both;width:100%;text-align:center;'>&nbsp;&nbsp;&nbsp;PetShop</div>";
                        emailBody += "<div style='clear:both;width:100%;text-align:center;font-size:11px;font-style:italic;'>&nbsp;&nbsp;&nbsp;&nbsp;Ghar Ka Khana!</div>";
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
                        emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;padding-top:15px;line-height:22px;margin:0px;font-weight:bold;padding-bottom:5px'>Hello User</p>";
                        emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:22px;color:rgb(41,41,41)'>Email: " + email.Text + "</p>";                       
                        emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:22px;color:rgb(41,41,41)'>OTP: " + ResetCode + "</p>";
                        emailBody += "<p><a href='" + "http://localhost:1137/ResetPassword.aspx?ResetCode=" + ResetCode + "&email=" + email.Text.Trim() + "'>Click here to Reset Password.</a></p>";
                        emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:22px;color:rgb(41,41,41)'>Thanks for reaching us.. We ll contact you ASAP.</p>";
                        emailBody += "<p>&nbsp;</p><p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:22px;margin:0px'>If you have any additional queries, please feel free to reach out us at +91 XXXXX XXXXX or drop us an email at <a href='mailto:Websiteweb.com' style='text-decoration:none;font-style:normal;font-variant:normal;font-weight:normal;font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:normal;color:rgb(162,49,35)' target='_blank'>example@domain.com</a>. We are here to help you.</p>";
                        emailBody += "<p>&nbsp;</p>";
                        emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:22px;margin:0px;font-weight:bold'>Best Regards,</p>";
                        emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;color:rgb(41,41,41);line-height:22px;margin:0px'>PetShop Support</p>";
                        emailBody += "<img src='https://www.chirags.in/images/logo.png' />";
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
                        smtp.Credentials = new System.Net.NetworkCredential("sadaf2016.loh@gmail.com", "fokehbfvxntclbxk");
                        smtp.Send(mail);


                        lblErrorMsg.Text = "Reset Password link sent to your email";
                        lblErrorMsg.ForeColor = System.Drawing.Color.Green;


                        //Response.Redirect("ConfirmLoginWithOTP.aspx");
                    }

                }
                else
                {
                    con.Close();
                    lblErrorMsg.Text = "Your Email Address is Not associated With Us.Please Provide Correct Email Address";
                    lblErrorMsg.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                lblErrorMsg.Text = "Please provide correct captcha code.";
                lblErrorMsg.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}
