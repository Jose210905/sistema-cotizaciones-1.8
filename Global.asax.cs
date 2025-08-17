using System;
using System.Web;
using System.Web.Routing;

namespace SistemaCotizaciones
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Solo registrar rutas, sin BundleConfig
            RouteConfig.RegisterRoutes(RouteTable.Routes);
        }

        void Application_End(object sender, EventArgs e) { }
        void Application_Error(object sender, EventArgs e) { }
        void Session_Start(object sender, EventArgs e) { }
        void Session_End(object sender, EventArgs e) { }
    }
}