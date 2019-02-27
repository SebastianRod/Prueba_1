<%-- 
    Document   : consultaVehiculo
    Created on : Feb 17, 2019, 7:45:22 PM
    Author     : juan.b.rodriguez
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
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
                        <a class="nav-link active" href="./consultaVehiculo.jsp">Consulta Vehiculos <span class='fas fa-car' style='font-size:24px'></span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./ingresaVenta.jsp">Ingresar Venta <span class='fas fa-cart-plus' style='font-size:24px'></span></a>
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
            <h2>Consultar <span>Vehiculo</span></h2>
        </div>
        <div class="registration">
            <div class="container">
                <div class="signin-form profile">
                    <div class="login-form">
                        <center>
                            <form method="post"  action="/Prueba_1/VehiculoController">
                                <p>
                                    <input type="text" class="form-control form-control-sm" name="id_vehiculo" id="id_vehiculo" placeholder="Id Vehiculo" required>
                                </p>
                                <p>
                                    <input type="submit" value="CONSULTAR">
                                </p>
                            </form>
                        </center>
                    </div>
                    <hr/>
                    <div class="table-responsive">

                        <table id="tablaResultado" class="table table-striped table-hover table-bordered" >
                            <thead>
                                <tr>
                                    <th>ID_Vehiculo</th>
                                    <th>Placa Vehiculo</th>
                                    <th>Modelo Vehiculo</th>
                                    <th>Precio Vehiculo</th>
                                    <th>Acción</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>${vehiculo.id}</td>
                                    <td>${vehiculo.placa}</td>
                                    <td>${vehiculo.modelo}</td>
                                    <td>${vehiculo.precio}</td>
                                    <td><center><a href="<c:url value="jsp/ingresaVenta.jsp" />" class="btn btn-default" >Vender   <span class="fas fa-shopping-basket"></span></a></center></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
