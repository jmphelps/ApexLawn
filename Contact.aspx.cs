using System;
using System.Net.Mail;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        MailMessage mailMessage = new MailMessage();
        mailMessage.From = new MailAddress("admin@apexlawncare.com", "Apex Lawns");
        mailMessage.To.Add (txtEmail.Text);
        mailMessage.Subject = "Email Confirmation";
        mailMessage.Body = "This email is to confirm that you have been added to our email list!";

        mailMessage.IsBodyHtml = true;

        SmtpClient client = new SmtpClient();

        try
        {
            client.Send(mailMessage);
            lblConfirm.Text += "Thanks " + txtFname.Text + ", you have been added to our email list!";
        }
        catch (Exception)
        {
            lblConfirm.Text += "NOT SENT!";
        }

        txtEmail.Enabled = false;
        txtFname.Enabled = false;
        txtLname.Enabled = false;
        Button1.Enabled = false;


    }
}