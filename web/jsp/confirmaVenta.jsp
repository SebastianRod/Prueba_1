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
                <div class="panel-body">
                    <div class="login-form">
                        <div class="panel-heading">Datos Cliente</div>
                        <center>
                            <form method="post"  action="/Prueba_1/ConfirmaVentaController">
                                <div class="row">
                                    <div class="col-md-6">
                                        <p>
                                            <label>Tipo documento</label>
                                            <input type="text" class="form-control form-control-sm" name="id_cliente" id="tipo_documento_cliente" placeholder="${cliente.tipo_documento_cliente}" disabled=”disabled”>
                                        </p>
                                        <p>
                                            <label>ID Cliente:</label>
                                            <input type="text" class="form-control form-control-sm" name="id_cliente" id="id_cliente" placeholder="${cliente.id_cliente}" disabled=”disabled”>
                                        </p>
                                        <p>
                                            <label>Nombres Cliente:</label>
                                            <input type="text" class="form-control form-control-sm" name="id_cliente" id="nombres_cliente" placeholder="${cliente.nombres_cliente}" disabled=”disabled”>
                                        </p>
                                        <p>
                                            <label>Apellidos Cliente:</label>
                                            <input type="text" class="form-control form-control-sm" name="id_cliente" id="apellidos_cliente" placeholder="${cliente.apellidos_cliente}" disabled=”disabled”>
                                        </p>
                                        <p>
                                            <label>Telefono Cliente:</label>
                                            <input type="text" class="form-control form-control-sm" name="id_cliente" id="telefono_cliente" placeholder="${cliente.telefono_cliente}" disabled=”disabled”>
                                        </p>
                                        <p>
                                            <label>Correo Cliente:</label>
                                            <input type="text" class="form-control form-control-sm" name="id_cliente" id="correo_cliente" placeholder="${cliente.correo_cliente}" disabled=”disabled”>
                                        </p>
                                        <p>
                                            <label>Direccion Cliente:</label>
                                            <input type="text" class="form-control form-control-sm" name="id_cliente" id="direccion_cliente" placeholder="${cliente.direccion_cliente}" disabled=”disabled”>
                                        </p>
                                    </div>
                                    <div class="col-md-6">
                                        <p>
                                            <label>ID Vehiculo</label>
                                            <input type="text" class="form-control form-control-sm" name="id_vehiculo" id="id_vehiculo" placeholder="${vehiculo.id}" disabled=”disabled”>
                                        </p>
                                        <p>
                                            <label>Placa Vehiculo</label>
                                            <input type="text" class="form-control form-control-sm" name="placa_vehiculo" id="placa_vehiculo" placeholder="${vehiculo.placa}" disabled=”disabled”>
                                        </p>
                                        <p>
                                            <label>Modelo Vehiculo</label>
                                            <input type="text" class="form-control form-control-sm" name="modelo_vehiculo" id="modelo_vehiculo" placeholder="${vehiculo.modelo}" disabled=”disabled”>
                                        </p>
                                        <p>
                                            <label>Precio Vehiculo</label>
                                            <input type="text" class="form-control form-control-sm" name="precio_vehiculo" id="precio_vehiculo" placeholder="${vehiculo.precio}" disabled=”disabled”>
                                        </p>
                                    </div>
                                </div>
                                <p>
                                <center><input type="submit" value="CONSULTAR"></center>
                                </p>
                            </form>
                        </center>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
