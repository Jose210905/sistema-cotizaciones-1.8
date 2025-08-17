using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using SistemaCotizaciones.DAL;
using SistemaCotizaciones.Models;

namespace SistemaCotizaciones.Pages
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Verificar autenticación
            if (Session["UsuarioLogueado"] == null)
            {
                Response.Redirect("Login.aspx", false);
                return;
            }

            if (!IsPostBack)
            {
                CargarDatosDashboard();
            }
        }

        private void CargarDatosDashboard()
        {
            try
            {
                // Mostrar nombre del usuario
                if (Session["NombreUsuario"] != null)
                {
                    lblUsuario.Text = Session["NombreUsuario"].ToString();
                }
                else
                {
                    lblUsuario.Text = "Usuario";
                }

                // Cargar contadores de forma segura
                CargarContadores();
            }
            catch (Exception ex)
            {
                lblUsuario.Text = "Usuario";
                // Log del error pero continuar
                ClientScript.RegisterStartupScript(this.GetType(), "error",
                    $"console.log('Error: {ex.Message}');", true);
            }
        }

        private void CargarContadores()
        {
            // Contador de clientes
            try
            {
                ClienteDAL clienteDAL = new ClienteDAL();
                var clientes = clienteDAL.ObtenerTodosLosClientes();
                lblTotalClientes.Text = clientes.Count.ToString();
            }
            catch
            {
                lblTotalClientes.Text = "0";
            }

            // Contador de productos
            try
            {
                ProductoDAL productoDAL = new ProductoDAL();
                var productos = productoDAL.ObtenerTodosLosProductos();
                lblTotalProductos.Text = productos.Count.ToString();
            }
            catch
            {
                lblTotalProductos.Text = "0";
            }

            // Contador de cotizaciones
            try
            {
                CotizacionDAL cotizacionDAL = new CotizacionDAL();
                var cotizaciones = cotizacionDAL.ObtenerTodasLasCotizaciones();
                lblTotalCotizaciones.Text = cotizaciones.Count.ToString();
            }
            catch
            {
                lblTotalCotizaciones.Text = "0";
            }
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            try
            {
                Session.Clear();
                Session.Abandon();
                Response.Redirect("Login.aspx", false);
            }
            catch
            {
                Response.Write("<script>window.location='Login.aspx';</script>");
            }
        }
    }
}