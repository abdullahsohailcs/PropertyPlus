<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="buy.aspx.cs" Inherits="WebApplication1.buy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="328px" Width="1285px">
        <Columns>
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title"></asp:BoundField>
            <asp:BoundField DataField="locations" HeaderText="locations" SortExpression="locations"></asp:BoundField>
            <asp:BoundField DataField="descriptions" HeaderText="descriptions" SortExpression="descriptions"></asp:BoundField>
            <asp:BoundField DataField="propertytype" HeaderText="propertytype" SortExpression="propertytype"></asp:BoundField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:websiteConnectionString %>' SelectCommand="SELECT * FROM [property] ORDER BY [boosted]"></asp:SqlDataSource>
</asp:Content>
