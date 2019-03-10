<%-- 
    Document   : Inicio
    Created on : Feb 17, 2019, 5:31:39 PM
    Author     : juan.b.rodriguez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="/Prueba_1/jsp/inicio.jsp">Modulo de Ventas</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="/Prueba_1/jsp/consultaVehiculo.jsp">Consulta Vehiculos <span class='fas fa-car' style='font-size:24px'></span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/Prueba_1/jsp/consultaVenta.jsp">Consulta venta <span class='fas fa-search-dollar' style='font-size:24px'></span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/Prueba_1/jsp/consultaCliente.jsp">Consulta Cliente <span class="fas fa-child" style='font-size:24px'></span></a>
                    </li>
                </ul>
            </div>
        </nav>
        <p>${mensaje}</p>
    </body>
</html>
