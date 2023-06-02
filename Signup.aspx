<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="WebApplication1.Signup"  %>


<!DOCTYPE html>
<style>
    html {
        background-color: lightgrey
    }
</style>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup</title>
</head>
<body>
    
    <form id="form1" runat="server">
        <div>
   
            <center >
               <form>
 
  <h1>PopertyPlus</h1>
              <h3>Sign up</h3><br>
      <label for="fname">Name* <br>
<asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="218px" required="text" placeholder="Austin"></asp:TextBox></label><br><br>
     <label for="TextBox2">Password*<br>
<asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="218px" required="text" placeholder="helloworld!321"></asp:TextBox> </label><br>
         <br>     <label for="TextBox3">Phone#*<br>  
                   <asp:TextBox ID="TextBox3" runat="server" Height="24px" Width="218px" required="text" placeholder="0312 3*****2"></asp:TextBox></label><br>
                   <br />
                   <label for="TextBox4">Email*<br>
                   <asp:TextBox ID="TextBox4" runat="server" Height="24px" Width="218px" required="email" placeholder="austin@email.com"></asp:TextBox>
                   <br />    </label><br><br />
<asp:Button ID="Button1" runat="server" Text="Signup" OnClick="Button1_Click" Height="53px" Width="275px" /><br>
</form>
       <br>
<p><a runat="server" href="~/Login"> Click here to logIn</a></p>                    </center>
       <br><br>
  
      <center>      <h5 style="color:darkred">Note: For billing same email and  phone number will be used</h5>
             </center></div>
    </form>
</body>
</html>