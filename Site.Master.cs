using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isprime"].Equals("0"))
            {
                LinkButton5.Visible = false;
                LinkButton1.Visible = false;
            }
            else if (Session["isprime"].Equals("1"))
            {
                LinkButton5.Visible = false;

                LinkButton2.Visible = false;
            }
            else if (Session["isprime"].Equals("2"))
            {

                LinkButton2.Visible = false;
            }

            try
            {
                LinkButton7.Text = "Hello " + Session["username"].ToString();

            }
            catch { }
            
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("saved.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://buy.stripe.com/test_14k3cTdir2Gt97qaEE");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Forum.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin.aspx");
        }
    }
}