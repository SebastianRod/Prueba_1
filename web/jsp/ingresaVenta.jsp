<%-- 
    Document   : ingresaVenta
    Created on : Feb 17, 2019, 7:58:23 PM
    Author     : juan.b.rodriguez
--%>

<%@page import="java.util.Map"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresa Venta</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="./inicio.jsp">Modulo de Ventas</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="./consultaVehiculo.jsp">Consulta Vehiculos <span class='fas fa-car' style='font-size:24px'></span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="./ingresaVenta.jsp">Ingresar Venta <span class='fas fa-cart-plus' style='font-size:24px'></span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./consultaVenta.jsp">Consulta venta <span class='fas fa-search-dollar' style='font-size:24px'></span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./consultaCliente.jsp">Consulta Cliente <span class="fas fa-child" style='font-size:24px'></span></a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="about-heading">
            <h2>Ingresar <span>Venta</span></h2>
        </div>
        <div class="container">
            <div class="panel panel-primary">
                <div class="panel-body">
                    <div class="login-form">
                        <center>
                            <form method="get"  action="/Prueba_1/IngresaVentaController">
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
                                <th>Seleccionar Cliente</th>
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
                                <td><input class="form-check-input" type="checkbox" id="seleccionarCliente" onclick="validar(this)">
                        <center><label class="form-check-label" for="seleccionarCliente">Seleccionar</label></center></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="panel panel-primary" id="auto" style="display: none">
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
                <center><a href="<c:url value="jsp/confirmaVenta.jsp" />" class="btn btn-default" >Vender   <span class="fas fa-shopping-basket"></span></a></center>
                </p>
            </div>
            <script>
                function validar(check) {
                    if (check.checked == true) {
                        document.getElementById("auto").style.display = 'block';
                        //alert("seleccionado: " + check.checked);
                    } else {
                        document.getElementById("auto").style.display = 'none';
                    }
                }
            </script>
        </div>
    </body>
</body>
</html>
