<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


            <center >
            <form>
                <h1>PopertyPlus</h1>
              <h3>Log In</h3><br>
      <label for="fname">Username*<br>
<asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="218px" required="text" placeholder="Austin"></asp:TextBox></label><br><br>
     <label for="TextBox2">Password*<br>
<asp:TextBox ID="TextBox2" runat="server" Height="34px" Width="218px" required="text" placeholder="helloworld!321"></asp:TextBox> </label><br>

                   <br>
<asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" Height="53px" Width="275px" /><br>

            </form>
       <br>                 </center>
       
            
    


</asp:Content>
