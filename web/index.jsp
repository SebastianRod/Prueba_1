<%-- 
    Document   : index
    Created on : Feb 17, 2019, 2:22:47 PM
    Author     : juan.b.rodriguez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilos.css"/>
        <script src="${pageContext.request.contextPath}/js/indexJS.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="panel panel-primary">
                <div class="panel-default" class="clase">Bienvenido</div>
                <div class="panel-body">
                    <form method="POST" action="/Prueba_1/LoginController" onsubmit="return valida(this)">
                        <center>
                            <div class="col-3">
                                <p>
                                    <label>Usuario:</label>
                                    <input type="text" class="form-control form-control-sm" name="user" id="user"/>
                                </p>
                            </div>
                            <div class="col-3">
                                <p>
                                    <label>Contraseña:</label>
                                    <input type="password" type="text" class="form-control form-control-sm"  name="pwd" id="pwd"/>
                                </p>
                            </div>
                            <p>
                                <input onclick="" type="submit" name="Entrar" id="Entrar" value="Entrar"/>
                            </p>
                            <p>${mensaje}</p>
                        </center>
                        <a href="./jsp/inicio.jsp">Saltar Login</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
