using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace WebApplication1
{
    public partial class Profile : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("update signup set passwords = @passwords , phone = @phone where username = @username", con);
                cmd.Parameters.AddWithValue("@passwords", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@phone", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@username", Session["username"]);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Profile updated. Successfully!');</script>");
            }
            catch
            {
                Response.Write("<script>alert('Something went wrong');</script>");
            }
        }
    }
}