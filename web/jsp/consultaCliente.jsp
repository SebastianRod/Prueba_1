<%-- 
    Document   : consultaCliente
    Created on : Feb 23, 2019, 8:39:03 PM
    Author     : juan.b.rodriguez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta Vehiculo</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="./jsp/inicio.jsp">Modulo de Ventas</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="./consultaVehiculo.jsp">Consulta Vehiculos <span class='fas fa-car' style='font-size:24px'></span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./ingresaVenta.jsp">Ingresar Venta <span class='fas fa-cart-plus' style='font-size:24px'></span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./consultaVenta.jsp">Consulta venta <span class='fas fa-search-dollar' style='font-size:24px'></span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="./consultaCliente.jsp">Consulta Cliente <span class="fas fa-child" style='font-size:24px'></span></a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container">
            <div class="panel panel-primary">
                <div class="panel-body">
                    <div class="login-form">
                        <center>
                            <form method="post"  action="/Prueba_1/BuscarClienteController">
                                <p>
                                    <select class="form-control" name="tipo_documento_cliente">
                                        <option selected value="0">Tipo Documento</option>
                                        <option value="CC">CC</option>
                                        <option>CE</option>
                                        <option>NIT</option>
                                    </select>
                                </p>
                                <p>
                                    <input type="text" class="form-control form-control-sm" name="id_cliente" id="id_cliente" placeholder="ID Cliente" required>
                                </p>
                                <p>
                                    <input type="submit" value="CONSULTAR">
                                </p>
                            </form>
                        </center>
                    </div>
                </div>
            </div>
        </div>
        <div class="table-responsive">
            <table id="tablaResultado" class="table table-striped table-hover table-bordered" >
                <thead>
                    <tr>
                        <th>ID_Cliente</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>${cliente.id_cliente}</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>
