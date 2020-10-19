using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Yellowstone.Models;

namespace Yellowstone
{
    public partial class Donate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {


            DonationList dlist = DonationList.GetDonations();
            dlist.AddDonation(txtAmount.Text, txtEmail.Text, txtFirstName.Text, txtLastName.Text, txtPhone.Text, txtAddress.Text, txtCity.Text, ddState.Text, txtZip.Text);
            lblConfirmation.Text = "Your donation was successful";
            lblConfirmation.Visible = true;
            txtAmount.Text = "";
            txtEmail.Text = "";
            txtEmailReentry.Text = "";
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtPhone.Text = "";
            txtAddress.Text = "";
            txtCity.Text = "";
            txtZip.Text = "";
        }
            protected void btnClear_Click(object sender, EventArgs e)
        {
            txtAmount.Text = "";
            txtEmail.Text = "";
            txtEmailReentry.Text = "";
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtPhone.Text = "";
            txtAddress.Text = "";
            txtCity.Text = "";
            txtZip.Text = "";
            lblConfirmation.Visible = false;


        }
    }
}