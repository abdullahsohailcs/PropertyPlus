using Stripe;
using System;
using System.Collections.Generic;
using System.Drawing.Printing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class GoPrime : System.Web.UI.Page
    {
        public string clientSecret = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Create a payment intent, expose it's client secret publicly.
                var options = new PaymentIntentCreateOptions
                {
                    Amount = 500,
                    Currency = "usd",
                    PaymentMethodTypes = new List<string>
                    {
                        "card",
                    },
                };
                var service = new PaymentIntentService();
                 service.Create(options);
            }
            else
            {
                // Handle post request from form submission
                // Put payment information in the database
                
            }
        }
        protected void button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx");
        }

    }
}