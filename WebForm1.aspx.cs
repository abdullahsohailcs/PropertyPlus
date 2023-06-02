using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        string strco = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            newproperty();
        }
        void newproperty()
        {
            // Response.Write("<script>alert('Testing');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strco);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into property(title,locations,descriptions,propertytype,bookmarked,boosted) values(@title,@locations,@descriptions,@propertytype,@bookmarked,@boosted)", con);
                cmd.Parameters.AddWithValue("@title", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@locations", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@descriptions", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@propertytype", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@bookmarked", 0);
                cmd.Parameters.AddWithValue("@boosted", 0);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Property Listed. Successfully!');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
    }
}
