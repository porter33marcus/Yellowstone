<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Donate.aspx.cs" Inherits="Yellowstone.Donate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="donatePage">
    <h2>Donate.</h2>
    <h3>Donation Information</h3>
    <br />
        <asp:Label   ID="lblConfirmation" runat="server" Visible="False" ForeColor="#05386B"></asp:Label>
    <!--<form id="donateForm"  class="form-horizontal" DefaultFocus="txtDonation" DefaultButton="btnSubmit">
       -->
        <div class="form-group">
            <div class="col-sm-3"></div>
            <label ID="lblAmount" class="control-label col-sm-3">
                Donation Amount:
            </label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtAmount" runat="server" CssClass="form-conrol"></asp:TextBox>
            </div>
            
        </div>
        <div class="form-group">
            <div class="col-sm-3"></div>
            <label id="lblEmail" class="control-label col-sm-3">Email Address:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Cssclass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfEmail" runat="server" 
                    CssClass="text-danger"
                    ControlToValidate="txtEmail"
                    ErrorMessage="Please enter an email address">
                </asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-3"></div>
            <label id="lblEmailReentry"  class="control-label col-sm-3">Email Re-entry:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtEmailReentry" runat="server" TextMode="Email" CssClass="form-control"></asp:TextBox>
                <asp:CompareValidator ID="cvEmail" runat="server" CssClass="text-danger"
                    ControlToValidate="txtEmailReentry"
                    Operator="Equal"
                    type="String"
                    ControlToCompare="txtEmail"
                    ErrorMessage="Emails must match">
                </asp:CompareValidator>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-3"></div>
            <label class="control-label col-sm-3">First Name:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-conrol"></asp:TextBox>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-3"></div>
            <label id="lblLastName" class="control-label col-sm-3">Last Name:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-conrol"></asp:TextBox>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-3"></div>
            <label id="lblPhone" class="control-label col-sm-3">Phone Number:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone" CssClass="form-conrol"></asp:TextBox>
            </div>
        </div>        

        <h3>Billing Address</h3>
        <div class="form-group">
            <div class="col-sm-3"></div>
            <label class="control-label col-sm-3">Address:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-conrol"></asp:TextBox>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-3"></div>
            <label class="control-label col-sm-3">City:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtCity" runat="server" CssClass="form-conrol"></asp:TextBox>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-3"></div>
            <label class="control-label col-sm-3">State:</label>
            <div class="col-sm-5">
                <asp:DropDownList ID="ddState" runat="server">
	                <asp:ListItem value="Select">Select a State</asp:ListItem>
                    <asp:ListItem value="IL">Illinois</asp:ListItem>
	                <asp:ListItem value="IA">Iowa</asp:ListItem>
	                <asp:ListItem value="MN">Minnesota</asp:ListItem>
	                <asp:ListItem value="MO">Missouri</asp:ListItem>
	                <asp:ListItem value="NE">Nebraska</asp:ListItem>
	                <asp:ListItem value="WI">Wisconsin</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfState" runat="server" 
                    CssClass="text-danger"
                    ControlToValidate="ddState"
                    InitialValue="Select"
                    ErrorMessage="Please select a state">
                </asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-3"></div>
            <label class="control-label col-sm-3">Zip code:</label>
            <div class="col-sm-5">
               <asp:TextBox ID="txtZip" runat="server" CssClass="form-conrol"></asp:TextBox>
            </div>
        </div> 
        <div class="form-group">
            <div class="col-sm-3"></div>
            <div class="col-sm-3">
             <asp:Button ID="btnSubmit" runat="server" Text="Submit" target="_self" OnDataBinding="btnSubmit_Click" OnClick="btnSubmit_Click"/>
            </div>
             <div class="col-sm-3">
                <asp:Button ID="btnClear" runat="server" Text="Clear" target="_self" OnClick="btnClear_Click"/>
            </div>
            <div>
                <asp:Label ID="lblError" CssClass="col-sm-5" runat="server" Text="" Visible="false"></asp:Label>
            </div>
        </div> 
  
   <!--</form>-->
    
   </div>
</asp:Content>
