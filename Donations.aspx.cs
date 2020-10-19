using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Yellowstone.Models;


namespace Yellowstone
{
    public partial class Donations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

            

            DataTable dt = new DataTable();
            dt.Columns.Add("Amount");
            dt.Columns.Add("Email");
            dt.Columns.Add("First Name");
            dt.Columns.Add("Last Name");
            dt.Columns.Add("Phone");
            dt.Columns.Add("Address");
            dt.Columns.Add("City");
            dt.Columns.Add("Zip Code");

            DonationList dlist = DonationList.GetDonations();
            for(int i = 0; i<dlist.Count; i++)
            {
                dt.Rows.Add(dlist[i].Amount, dlist[i].Email, dlist[i].FName, dlist[i].LName, dlist[i].Phone, dlist[i].Address, dlist[i].City, dlist[i].Zip);
            }
            //GridView GridView1 = new GridView();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}