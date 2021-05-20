<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>CRMVentas - Clientes</title>
    <style>
        body{padding: 15px;background-color: beige;}
    </style>
</head>
<body>
<h1>Buscar clientes</h1>
<br/>
<form action="buscarServlet" method="get">
    <input type="search" name="nombreCliente" />
    <br /><br />
    <button type="submit">Buscar</button>
</form>
<!--<a href="hello-servlet">Hello Servlet</a>-->
</body>
</html>