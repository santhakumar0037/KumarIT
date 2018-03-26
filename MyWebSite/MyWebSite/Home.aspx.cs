using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;

namespace MyWebSite
{
    public partial class Home : System.Web.UI.Page
    {
       
      

        protected void Page_Load(object sender, EventArgs e)
        {
            ContactFormQuery();
        }
        public static void ContactFormQuery() {
            var context = new KumarEntities();
            var query = from e in context.ContactForms select e;
            var ContactForms = query.ToList();
        }

        protected void emptytxtBox()
        {
            txtName.Text = String.Empty;
            txtEmail.Text = String.Empty;
            txtComments.Text = String.Empty;
            txtMobileNumber.Text = String.Empty;
        }

        protected void saveContactInfo()
        {
            using (var context = new KumarEntities())
            {
                DateTime date = DateTime.Now;
                long LongId = long.Parse(date.ToString("yyMMddHHss"));
                int CurrentId = unchecked((int)LongId);
                var contactInfo = context.ContactForms.Add(new ContactForm
                {
                    Id = CurrentId,
                    Name = txtName.Text,
                    Email = txtEmail.Text,
                    MobileNumber = txtMobileNumber.Text,
                    Comments = Convert.ToString(txtComments.Text),
                });
                try
                {
                    context.SaveChanges();
                }
                catch (Exception ex)
                {
                    Exception ex2 = ex;
                    string errorMessage = string.Empty;
                    while (ex2 != null)
                    {
                        errorMessage += ex2.ToString();
                        ex2 = ex2.InnerException;
                    }
                    HttpContext.Current.Response.Write(errorMessage);
                    //Error message ends
                }
            }
        }
        protected void sendMail()
        {
            string from = System.Web.Configuration.WebConfigurationManager.AppSettings["email"];
            string to = System.Web.Configuration.WebConfigurationManager.AppSettings["email"];
            string password = System.Web.Configuration.WebConfigurationManager.AppSettings["password"];
            string textBody = " <table border=" + 1 + " cellpadding=" + 0 + " cellspacing=" + 0 + " width = " + 400 + "><tr bgcolor='#ffff66'>" +
                " <td> Name: <b> " + txtName.Text + "</b></td> <td> Email: <b> " + txtEmail.Text + "</b></td> <td>Mobile Number: <b> " + txtMobileNumber.Text + "</b></td><td>Comments: <b> " + txtComments.Text + "</b></td></tr>";
            textBody += "</table>"; // values are stored in a table format 
            System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
            mail.To.Add(to);
            mail.From = new MailAddress(from, "Kumar-Contact Form", System.Text.Encoding.UTF8);
            mail.Subject = "New contact request from Kumar portfolio";
            mail.SubjectEncoding = System.Text.Encoding.UTF8;
            mail.Body = textBody;
            mail.BodyEncoding = System.Text.Encoding.UTF8;
            mail.IsBodyHtml = true;
            mail.Priority = MailPriority.High;

            SmtpClient client = new SmtpClient();

            client.Credentials = new System.Net.NetworkCredential(from, password);
            client.Port = 587;
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true;
            try
            {
                client.Send(mail);

            }
            //Try ends
            // Error messages are catched 
            catch (Exception ex)
            {
                Exception ex2 = ex;
                string errorMessage = string.Empty;
                while (ex2 != null)
                {
                    errorMessage += ex2.ToString();
                    ex2 = ex2.InnerException;
                }
                HttpContext.Current.Response.Write(errorMessage);
                //Error message ends
            }
        }

        //protected void BtnSubmitCV_Click(object sender, EventArgs e)
        //{
        //    Response.ContentType = "application/octect-stream";
        //    Response.AppendHeader("Content-disposition", "filename= Santha_kumar_CV.pdf");
        //    Response.TransmitFile(Server.MapPath("~/File/Santha_kumar_CV.pdf"));
        //    Response.End();
        //    //string EncodedResponse = Request.Form["g-Recaptcha-Response"];
        //    //bool IsCaptchaValid = (ReCaptchaClass.Validate(EncodedResponse) == "true" ? true : false);
        //    //if (IsCaptchaValid)
        //    //{
        //    //    saveContactInfo();
        //    //    sendMail();
        //    //lblStatus.ForeColor = System.Drawing.Color.Green;
        //    //lblStatus.Text = "Thanks for your interest, Information stored Successfully !";
        //    //    emptytxtBox();

        //    //}
        //    //else
        //    //{
        //    //    lblStatus.ForeColor = System.Drawing.Color.Red;
        //    //    lblStatus.Text = "Sorry Information is not stored";
        //    //    emptytxtBox();
        //    //}
        //    //ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "Pop", "$('#ContactForm').modal('hide');", true);
        //}

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string EncodedResponse = Request.Form["g-Recaptcha-Response"];
            bool IsCaptchaValid = (ReCaptchaClass.Validate(EncodedResponse) == "true" ? true : false);
            if (IsCaptchaValid)
            {
                saveContactInfo();
                sendMail();
                lblStatus.ForeColor = System.Drawing.Color.Green;
                lblStatus.Text = "Thanks for your interest, Information stored Successfully !";
                emptytxtBox();
            }
            else
            {
                lblStatus.ForeColor = System.Drawing.Color.Red;
                lblStatus.Text = "Sorry Information is not stored";
                emptytxtBox();
            }
        }

        protected void BtnCV_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/octect-stream";
            Response.AppendHeader("Content-disposition", "filename= Santha_kumar_CV.pdf");
            Response.TransmitFile(Server.MapPath("~/File/Santha_kumar_CV.pdf"));
            Response.End();
            lblStatus.ForeColor = System.Drawing.Color.Green;
            lblStatus.Text = "Thanks for your interest";
        }

        protected void StartUpModalButton_Click(object sender, EventArgs e)
        {
            Response.BufferOutput = true;
            Response.Redirect("https://github.com/santhakumar0037/Pegasus-app.git");
        }
    }
}