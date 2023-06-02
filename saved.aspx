<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="saved.aspx.cs" MasterPageFile="~/Site.Master" Inherits="WebApplication1.saved" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


      <center>

        <h5>Save property</h5>
        <br /><br />
        <form>
        <label for="TextBox1">Enter propety ID*<br />
         </label>
        </form></center>

    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>


    <asp:SqlDataSource runat="server" ID="SqlDataSource1"></asp:SqlDataSource>
    <br /><br />
</asp:Content>
