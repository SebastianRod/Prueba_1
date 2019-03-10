<%-- 
    Document   : consultaVenta
    Created on : Feb 17, 2019, 7:59:49 PM
    Author     : juan.b.rodriguez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta Venta</title>
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
                        <a class="nav-link active" href="/Prueba_1/jsp/consultaVenta.jsp">Consulta venta <span class='fas fa-search-dollar' style='font-size:24px'></span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/Prueba_1/jsp/consultaCliente.jsp">Consulta Cliente <span class="fas fa-child" style='font-size:24px'></span></a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container">
            <div class="panel panel-primary">
                <div class="panel-body">
                    <div class="login-form">
                        <center>
                            <form method="post"  action="/Prueba_1/ConsultaVentaController">
                                <p>
                                    <input type="text" class="form-control form-control-sm" name="id_factura" id="id_factura" placeholder="ID Factura" required>
                                </p>
                                <p>
                                    <input type="submit" value="CONSULTAR">
                                </p>
                            </form>
                        </center>
                    </div>
                </div>
            </div>
            <div class="panel panel-primary">
                <div class="table-responsive">
                    <table id="tablaResultadoFactura" class="table table-striped table-hover table-bordered" >
                        <thead>
                            <tr>
                                <th>ID Factura</th>
                                <th>Fecha Factura</th>
                                <th>Valor Factura</th>
                                <th>ID Cliente</th>
                                <th>Nombres Cliente</th>
                                <th>Apellidos Cliente</th>
                                <th>ID Vehiculo</th>
                                <th>Placa Vehiculo</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>${factura.id_factura}</td>
                                <td>${factura.fecha_factura}</td>
                                <td>${factura.valor_factura}</td>
                                <td>${factura.id_cliente}</td>
                                <td>${factura.nombres_cliente}</td>
                                <td>${factura.apellidos_cliente}</td>
                                <td>${factura.id_vehiculo}</td>
                                <td>${factura.placa_vehiculo}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <center><a href="./jsp/consultaVenta.jsp">Volver</a></center>
        </div>
    </body>
</html>
