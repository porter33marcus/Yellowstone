using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Yellowstone.Models
{
    public class DonationList
    {
        private List<Donation> dList;
        public DonationList()
        {
            dList = new List<Donation>();
        }

        public int Count
        {
            get { return dList.Count; }
        }
        
        public Donation this[int index]
        {
            get { return dList[index]; }
        }

       

        public Donation this[string lastname]
        {
            get
            {
                foreach (Donation i in dList)
                    if (i.LName == lastname) return i;
                return null;
            }
        }


        public static DonationList GetDonations()
        {
            DonationList dList = (DonationList)HttpContext.Current.Session["dList"];
            if (dList == null)
                HttpContext.Current.Session["dList"] = new DonationList();
            return (DonationList)HttpContext.Current.Session["dList"];
        }

        public void AddDonation(string amount, string fname, string lname, string email, string phone, string address, string city, string state, string zip)
        {
            Donation i = new Donation(amount, fname, lname, email, phone, address, city, state, zip);
            dList.Add(i);
        }
    }
}