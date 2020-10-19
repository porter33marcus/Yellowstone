<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Yellowstone.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class = "row">
        <h2>Yellowstone National Park</h2>
        <h3>Learn about its history</h3>
        <div class="container1">
    
            <div class = "col-md-6">
                <img src="images/thermal.jpg" />
            </div>
            <div class = "col-md-6">
                <p>Today, park managers use archeological and historical studies to help us understand how people lived here in the past. Ethnography helps us learn about how groups of people identify themselves and their connections to the park. Research is also conducted to learn how people continue to affect and be affected by these places, many of which have been relatively protected from human impacts. Some alterations to the landscape, such as the construction of roads and other facilities, are generally accepted as necessary to accommodate the needs of visitors today. Information on the possible consequences of modern human activities, both inside and outside the parks, is used to determine how best to preserve Yellowstone’s natural and cultural resources, and the quality of the visitors’ experience.</p><br>
                <a class="btn btn-primary btn-lg" href="https://www.nps.gov/yell/learn/historyculture/park-history.htm" target="_blank" >Learn more &raquo;</a>
            </div>
        </div>
    </div>
</asp:Content>
