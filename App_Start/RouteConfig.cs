using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace SistemaCotizaciones
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            // DESHABILITAR FRIENDLY URLS COMPLETAMENTE
            // NO REGISTRAR NADA PARA EVITAR CONFLICTOS

            // var settings = new FriendlyUrlSettings();
            // settings.AutoRedirectMode = RedirectMode.Permanent;
            // routes.EnableFriendlyUrls(settings);
        }
    }
}