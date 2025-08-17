using System;
using System.Web;
using System.Web.UI;
using SistemaCotizaciones.DAL;
using SistemaCotizaciones.Models;

namespace SistemaCotizaciones.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session.Clear();
            }
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty(txtUsuario.Text.Trim()) ||
                    string.IsNullOrEmpty(txtContrasena.Text.Trim()))
                {
                    MostrarMensaje("Por favor complete todos los campos", "error");
                    return;
                }

                if (txtUsuario.Text.Trim() == "admin" && txtContrasena.Text.Trim() == "admin123")
                {
                    Session["UsuarioLogueado"] = true;
                    Session["NombreUsuario"] = "Administrador";
                    Session["UsuarioID"] = 1;

                    if (!Response.IsRequestBeingRedirected)
                    {
                        Response.Redirect("Default.aspx", false);
                        Context.ApplicationInstance.CompleteRequest();
                    }
                }
                else
                {
                    MostrarMensaje("❌ Usuario o contraseña incorrectos", "error");
                    txtContrasena.Text = "";
                }
            }
            catch (Exception ex)
            {
                MostrarMensaje("❌ Error: " + ex.Message, "error");
            }
        }

        private void MostrarMensaje(string mensaje, string tipo)
        {
            lblMensaje.Text = mensaje;
            pnlMensaje.Visible = true;

            if (tipo == "error")
            {
                pnlMensaje.CssClass = "alert alert-error";
            }
            else if (tipo == "success")
            {
                pnlMensaje.CssClass = "alert alert-success";
            }
        }
    }
}