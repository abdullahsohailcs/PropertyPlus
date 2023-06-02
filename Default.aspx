<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <center>
    <section>
        <img src="imgs/top.jpg" class="img-fluid" height="350" width="1300" top="20" />
    </section>

         <br /><br />
     <section>
      <div class="container">
         <div class="row">
            <div class="col-12">
               <center>
                  <h2>Our Features</h2>
                  <p><b>Our 3 Primary Features -</b></p>
               </center>
            </div>
         </div>
         <div class="row">
            <div class="col-md-4">
               <center>
        <a runat="server" href="~/buy"><img width="150px" src="imgs/a.png"/>
                  <h4>Buy Property</h4></a>
               </center>
            </div>
            <div class="col-md-4">
     <br />          <center>
         <a runat="server" href="~/rent">  <img width="150px" src="imgs/b.png"/>
                  <h4>Rent Property</h4></a>
               </center>
            </div>
            <div class="col-md-4">
               <center>
             <a runat="server" href="~/sell">     <img width="150px" src="imgs/c.png"/> 
                  <h4>List Property</h4> </a>
               </center>
            </div>
         </div>
      </div>
   </section>
         <br /><br />
   <section>
      <img src="imgs/in-homepage-banner.jpg" class="img-fluid"/>
   </section>
  
    </center>
</asp:Content>
