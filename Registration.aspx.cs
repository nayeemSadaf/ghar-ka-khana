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
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);

       
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnRegSbt_Click1(object sender, EventArgs e)
        {
            chkpin_Click();
        }

        private string Base64Encode(string plainText)
        {
            var plainTextBytes = System.Text.Encoding.UTF8.GetBytes(plainText);
            return System.Convert.ToBase64String(plainTextBytes);
            //throw new NotImplementedException();
        }
        private string MyPasswordEncrypt(string returnText)
        {
            string EncryptionKey = "E5C2B81A3B2B2";
            byte[] clearBytes = Encoding.Unicode.GetBytes(returnText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(clearBytes, 0, clearBytes.Length);
                        cs.Close();
                    }
                    returnText = Convert.ToBase64String(ms.ToArray());
                }
            }
            return returnText;
        }

        public void chkpin_Click()
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            //check for valid pincode
            SqlCommand checkpin = new SqlCommand("select pin_code from [pin] where pin_code=@pin2", con);
            checkpin.Parameters.AddWithValue("pin2", pincode.Text.ToString());//emai_id = db, email = textbox, email = parameter.
            SqlDataReader read2 = checkpin.ExecuteReader();

            if (read2.HasRows)
            {
                con.Close();
                lblcheckpin.Text = "";
                lblcheckpin.ForeColor = System.Drawing.Color.Red;
                submit_data();

            }
            else
            {
                con.Close();
                lblcheckpin.Text = "Select another pin code";
                lblcheckpin.ForeColor = System.Drawing.Color.Red;


            }
        }

        public void submit_data()
        {
            string mygender;
            if (RadioButton1.Text == "Male")
            {
                mygender = "Male";
            }
            else if (RadioButton1.Text == "Female")
            {
                mygender = "Female";
            }
            else
            {
                mygender = "Other";
            }

            // send email

            if (con.State == ConnectionState.Closed)
                con.Open();



            SqlCommand checkmail = new SqlCommand("select email_id from [user_info] where email_id=@email", con);
            checkmail.Parameters.AddWithValue("email", email.Text.ToString());//emai_id = db, email = textbox, email = parameter.
            SqlDataReader read = checkmail.ExecuteReader();

            if (read.HasRows)
            {
                con.Close();
                lblErrorMsg.Text = "Email already exist try with another account";
                lblErrorMsg.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                con.Close();

                Random rnd = new Random();
                int myRandomCode = rnd.Next(10000000, 99999999);
                string activation_code = myRandomCode.ToString();

                //byte[] mypic = FileUpload1.FileBytes;

                con.Open();

                string insertQuery = "insert into [user_info] (first_name, last_name, email_id, pass_word, mobile, house_no, landmark, pincode, activation_code, is_active, gender) values (@firstname, @lastname,@email ,@pwd, @mob, @house_no, @landmark, @pincode, @acti_code, @is_active, @gender)";
                SqlCommand cmd = new SqlCommand(insertQuery, con);
                cmd.Parameters.AddWithValue("@firstname", fname.Text.ToString().Trim());
                cmd.Parameters.AddWithValue("@lastname", lname.Text.ToString().Trim());
                cmd.Parameters.AddWithValue("@email", email.Text.ToString().Trim());
                cmd.Parameters.AddWithValue("@pwd", (password.Text.ToString().Trim()));
                cmd.Parameters.AddWithValue("@mob", mobile.Text.ToString().Trim());
                //cmd.Parameters.AddWithValue("@pic", mypic);
                cmd.Parameters.AddWithValue("@house_no", house_no.Text.ToString().Trim());
                cmd.Parameters.AddWithValue("@landmark", landmark.Text.ToString().Trim());
                cmd.Parameters.AddWithValue("@pincode", pincode.Text.ToString().Trim());
                cmd.Parameters.AddWithValue("acti_code", activation_code);                
                cmd.Parameters.AddWithValue("is_active", 0);
                cmd.Parameters.AddWithValue("gender", mygender);
                cmd.ExecuteNonQuery();

                MailMessage mail = new MailMessage();
                mail.To.Add(email.Text.ToString().Trim());
                mail.From = new MailAddress("anjaliojha495@gmail.com");
                mail.Subject = "Activate your account";
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
                emailBody += "<p><a href='" + "http://localhost:1137/ActivateAccount.aspx?activation_code=" + activation_code + "&email=" + Base64Encode(email.Text.Trim()) + "'>Click here to activate your account.</a></p>";
                emailBody += "<p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:22px;color:rgb(41,41,41)'>Thanks for reaching us.. We ll contact you ASAP.</p>";
                emailBody += "<p>&nbsp;</p><p style='font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:22px;margin:0px'>If you have any additional queries, please feel free to reach out us at +91 XXXXX XXXXX or drop us an email at <a href='mailto:Websiteweb.com' style='text-decoration:none;font-style:normal;font-variant:normal;font-weight:normal;font-family:Arial,Helvetica,Verdana,sans-serif; font-size:14px;line-height:normal;color:rgb(162,49,35)' target='_blank'>example@domain.com</a>. We are here to help you.</p>";
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

                lblErrorMsg.Text = "You have successfully registered. Please check your email for activation code.";
                lblErrorMsg.ForeColor = System.Drawing.Color.Green;
                con.Close();
            }




        }
    }
}