<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login"  %>

<!DOCTYPE html>
<style>
    html {
        background-color: lightgrey
    }
</style>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body>
   
    <form id="form1" runat="server">
        <div>
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
       <br>
<p><a runat="server" href="~/Signup"> Click here to Signup</a></p>                    </center>
       <br><br><br>
             </div>
    </form>
</body>
</html>