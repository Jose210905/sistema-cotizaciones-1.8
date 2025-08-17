<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SistemaCotizaciones.Pages.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Sistema de Cotizaciones - Dashboard</title>
    <link href="../CSS/styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <!-- Header -->
        <div class="header">
            <h1>🏪 Sistema de Cotizaciones - Pasty Custom Design</h1>
        </div>

        <!-- Navigation Menu -->
        <div class="nav-menu">
            <a href="Default.aspx" style="background-color: #2c3e50;">🏠 Dashboard</a>
            <a href="Clientes.aspx">👥 Clientes</a>
            <a href="Productos.aspx">📦 Productos</a>
            <a href="Cotizaciones.aspx">📋 Cotizaciones</a>
            <a href="Reportes.aspx">📊 Reportes</a>
            <asp:LinkButton ID="btnCerrarSesion" runat="server" OnClick="btnCerrarSesion_Click" style="color: white; text-decoration: none; padding: 10px 20px; margin: 0 5px;">🚪 Cerrar Sesión</asp:LinkButton>
        </div>

        <div class="container">
            <div class="form-container">
                <h2>🏠 Dashboard del Sistema</h2>
                <p>Bienvenido, <asp:Label ID="lblUsuario" runat="server" Text="Usuario"></asp:Label></p>
                
                <!-- Resumen del sistema -->
                <div style="display: flex; flex-wrap: wrap; gap: 20px; margin: 20px 0;">
                    
                    <!-- Tarjeta Clientes -->
                    <div class="form-container" style="flex: 1; min-width: 250px; text-align: center;">
                        <h3 style="color: #3498db;">👥 Clientes</h3>
                        <div style="font-size: 2em; font-weight: bold; color: #2c3e50; margin: 10px 0;">
                            <asp:Label ID="lblTotalClientes" runat="server" Text="0"></asp:Label>
                        </div>
                        <p>Clientes registrados</p>
                        <a href="Clientes.aspx" class="btn btn-primary">Gestionar Clientes</a>
                    </div>

                    <!-- Tarjeta Productos -->
                    <div class="form-container" style="flex: 1; min-width: 250px; text-align: center;">
                        <h3 style="color: #27ae60;">📦 Productos</h3>
                        <div style="font-size: 2em; font-weight: bold; color: #2c3e50; margin: 10px 0;">
                            <asp:Label ID="lblTotalProductos" runat="server" Text="0"></asp:Label>
                        </div>
                        <p>Productos disponibles</p>
                        <a href="Productos.aspx" class="btn btn-success">Gestionar Productos</a>
                    </div>

                    <!-- Tarjeta Cotizaciones -->
                    <div class="form-container" style="flex: 1; min-width: 250px; text-align: center;">
                        <h3 style="color: #e74c3c;">📋 Cotizaciones</h3>
                        <div style="font-size: 2em; font-weight: bold; color: #2c3e50; margin: 10px 0;">
                            <asp:Label ID="lblTotalCotizaciones" runat="server" Text="0"></asp:Label>
                        </div>
                        <p>Cotizaciones activas</p>
                        <a href="Cotizaciones.aspx" class="btn btn-danger">Gestionar Cotizaciones</a>
                    </div>
                </div>

                <!-- Acciones rápidas -->
                <div class="form-container">
                    <h3>🚀 Acciones Rápidas</h3>
                    <div style="display: flex; gap: 15px; flex-wrap: wrap;">
                        <a href="Clientes.aspx" class="btn btn-primary">➕ Nuevo Cliente</a>
                        <a href="Productos.aspx" class="btn btn-success">➕ Nuevo Producto</a>
                        <a href="Cotizaciones.aspx" class="btn btn-danger">➕ Nueva Cotización</a>
                        <a href="Reportes.aspx" class="btn" style="background-color: #9b59b6; color: white;">📊 Ver Reportes</a>
                    </div>
                </div>

                <!-- Información del sistema -->
                <div class="form-container">
                    <h3>ℹ️ Estado del Sistema</h3>
                    <p><strong>✅ Sistema funcionando correctamente</strong></p>
                    <p>Versión: 1.0</p>
                    <p>Último acceso: <script>document.write(new Date().toLocaleString());</script></p>
                </div>
            </div>
        </div>
    </form>
</body>
</html>