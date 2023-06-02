<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="WebApplication1.Profile" MasterPageFile="~/Site.Master" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     <center >
            <form>
                
              <h3>Update Profile</h3><br>
      <label for="fname">New Password*<br>
<asp:TextBox ID="TextBox1" runat="server" Height="23px" Width="218px" required="text"></asp:TextBox></label><br><br>
     <label for="TextBox2">New Phone no.*<br>
<asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="213px" required="text"></asp:TextBox> </label><br>

                   <br>
                <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
                </form>
       <br>                    </center>
       <br><br><br>
           
   


</asp:Content>
