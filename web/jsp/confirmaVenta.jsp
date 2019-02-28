<%-- 
    Document   : confirmaVenta
    Created on : Feb 26, 2019, 10:26:58 PM
    Author     : juan.b.rodriguez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmar Venta</title>
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
                        <a class="nav-link active" href="/Prueba_1/jsp/ingresaVenta.jsp">Ingresar Venta <span class='fas fa-cart-plus' style='font-size:24px'></span></a>
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
        <div class="container">
            <div class="panel panel-primary">
                <div class="table-responsive">
                    <table id="tablaResultadoCliente" class="table table-striped table-hover table-bordered" >
                        <thead>
                            <tr>
                                <th>Tipo Documento</th>
                                <th>ID Cliente</th>
                                <th>Nombres Cliente</th>
                                <th>Apellidos Cliente</th>
                                <th>Telefono Cliente</th>
                                <th>Correo Cliente</th>
                                <th>Direccion Cliente</th>

                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>${cliente.tipo_documento_cliente}</td>                                
                                <td>${cliente.id_cliente}</td>                                
                                <td>${cliente.nombres_cliente}</td>                                
                                <td>${cliente.apellidos_cliente}</td>                                
                                <td>${cliente.telefono_cliente}</td>                                
                                <td>${cliente.correo_cliente}</td>
                                <td>${cliente.direccion_cliente}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="panel panel-primary" id="auto">
                <form method="post"  action="/Prueba_1/ConfirmaVentaController">
                    <div class="table-responsive">
                        <table id="tablaResultadoAuto" class="table table-striped table-hover table-bordered" >
                            <thead>
                                <tr>
                                    <th>ID_Vehiculo</th>
                                    <th>Placa Vehiculo</th>
                                    <th>Modelo Vehiculo</th>
                                    <th>Precio Vehiculo</th>
                                </tr>
                            </thead>
                            <tbody>

                                <tr>
                                    <td>${vehiculo.id}</td>
                                    <td>${vehiculo.placa}</td>
                                    <td>${vehiculo.modelo}</td>
                                    <td>${vehiculo.precio}</td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                    <p>
                    <center><input type="submit" value="CONSULTAR"></center>
                    </p>
                </form>
            </div>
        </div>
    </body>
</html>
