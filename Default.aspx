<%@ Page Title="Sistema de Cotizaciones" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SistemaCotizaciones._Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Sistema de Cotizaciones - Redirigiendo...</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 100px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            min-height: 100vh;
            margin: 0;
        }
        .loading-container {
            background: rgba(255,255,255,0.1);
            padding: 40px;
            border-radius: 15px;
            max-width: 500px;
            margin: 0 auto;
        }
        .spinner {
            border: 4px solid rgba(255,255,255,0.3);
            border-top: 4px solid white;
            border-radius: 50%;
            width: 50px;
            height: 50px;
            animation: spin 1s linear infinite;
            margin: 20px auto;
        }
        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
        .btn {
            background: rgba(255,255,255,0.2);
            color: white;
            padding: 12px 24px;
            border: 2px solid white;
            border-radius: 8px;
            text-decoration: none;
            display: inline-block;
            margin-top: 20px;
            transition: all 0.3s;
        }
        .btn:hover {
            background: white;
            color: #667eea;
        }
    </style>
</head>
<body>
    <div class="loading-container">
        <h2>🏪 Sistema de Cotizaciones</h2>
        <h3>Pasty Custom Design</h3>
        <div class="spinner"></div>
        <p>Redirigiendo al sistema...</p>
        <p>Si no es redirigido automáticamente:</p>
        <a href="Pages/Login.aspx" class="btn">🔑 Ir al Login</a>
    </div>

    <script type="text/javascript">
        setTimeout(function () {
            if (window.location.pathname === '/' || window.location.pathname === '/Default.aspx') {
                window.location.href = 'Pages/Login.aspx';
            }
        }, 2000);
    </script>
</body>
</html>