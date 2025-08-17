using System;
using System.Web;
using System.Web.UI;

namespace SistemaCotizaciones
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UsuarioLogueado"] != null)
            {
                if (!Response.IsRequestBeingRedirected)
                {
                    Response.Redirect("Pages/Dashboard.aspx", false); // CAMBIO AQUÍ
                    Context.ApplicationInstance.CompleteRequest();
                }
            }
            else
            {
                if (!Response.IsRequestBeingRedirected)
                {
                    Response.Redirect("Pages/Login.aspx", false);
                    Context.ApplicationInstance.CompleteRequest();
                }
            }
        }
    }
}