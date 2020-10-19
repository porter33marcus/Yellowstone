<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Yellowstone.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
        <div class="row">
            <div class="col-md-4">
                <h2>Contact Us</h2>
                <h3>Mailiing Address</h3>
                <address>
                    PO Box 168<br />
                    Yellowstone National Park, Wy 82190-0168<br />
                    <abbr title="Phone">Phone:</abbr>
                    307-344-7381
                </address>

                <address>
                    <strong>additional contact information</strong>   
                    <p>
                        <a class="btn btn-primary btn-lg" href="https://www.nps.gov/yell/contacts.htm" target="_blank" >Learn More &raquo;</a><br />
                    </p>
      
                </address>
            </div>
            <div class = "col-md-4">
                <img src="images/lake.jpg" />
            </div>
            <div class = "col-md-4">
                <img src="images/sunrise.jpg" />
            </div>
        </div>
    
</asp:Content>
