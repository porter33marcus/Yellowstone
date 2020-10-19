using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Globalization;
namespace Yellowstone.Models
{
    public class Donation
    {
        public Donation(string amount, string email, string fname, string lname,  string phone, string address, string city, string state, string zip)
        {
            double AmountDigit = Convert.ToDouble(amount);
            Amount = AmountDigit.ToString("C", CultureInfo.GetCultureInfo("en-US"));
            FName = fname;
            LName = lname;
            Email = email;
            Phone = phone;
            Address = address;
            City = city;
            State = state;
            Zip = zip;
        }
        public string Amount { get; set; }
        public string FName { get; set; }
        public string LName { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Zip { get; set; }
    }
}