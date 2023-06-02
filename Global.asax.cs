using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using Stripe;

namespace WebApplication1
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            StripeConfiguration.ApiKey = "sk_test_51M8NL3GIyrG9KaoauCybUjhWTQM5mnjwP01PtDAkAqgDkqOFDLz4zIxwjAGFfiuwTT8FonsfH9BGhvsKSBuRgKs700iuXk7ZZ3";

        }
    }
}