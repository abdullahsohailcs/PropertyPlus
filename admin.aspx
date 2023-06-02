<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WebApplication1.admin" MasterPageFile="~/Site.Master"%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <center>

        <h5>Update Membership</h5>
        <br /><br />
        <form>
        <label for="TextBox1">Email*<br />
        <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="183px" required="email" placeholder="admin@email.com"></asp:TextBox> <br /><br />
            <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
        </label>
        </form></center>
    <br /><br /><br /><br />
    <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlDataSource1" Width="1121px">
        <Columns>
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username"></asp:BoundField>
            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone"></asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email"></asp:BoundField>
            <asp:BoundField DataField="isprime" HeaderText="isprime" SortExpression="isprime"></asp:BoundField>
        </Columns>
    </asp:GridView>

        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:websiteConnectionString %>' SelectCommand="SELECT [username], [phone], [email], [isprime] FROM [signup] ORDER BY [email], [isprime]"></asp:SqlDataSource>
    <br /><br />
</asp:Content>
