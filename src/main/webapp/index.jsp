<%@ page import="ar.com.xeven.CRMVentasWeb.Cliente" %>
<%@ page import="java.util.List" %>
<%@ page import="ar.com.xeven.CRMVentasWeb.ClienteDAO" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>CRMVentas - Clientes</title>
    <style>
        body{padding: 15px;background-color: beige;}
        table{width:80%;border: 1px solid black;}
        td,tr,th{border:1px solid gray;}
    </style>
</head>
<body>
<h1>Buscar clientes</h1>
<br/>
<%
    if(request.getParameter("guardar")!=null && request.getParameter("guardar").equals("ok"))
        out.println("<hr/>Cliente guardado en la base de datos!<hr/>");
%>
<form action="buscarServlet" method="get">
    <input type="search" name="nombreCliente" />
    <br /><br />
    <button type="submit">Buscar</button>
</form>
<br /><br />
<div style="text-align: center;">
<table>
    <tr>
        <th>ID</th>
        <th>Nombre</th>
        <th>Cargo</th>
        <th>Empresa</th>
        <th>Tel.</th>
        <th>Mail</th>
    </tr>
    <%
        List<Cliente> clientes = ClienteDAO.getClientes();
        for(Cliente cliente:clientes){
    %>
        <tr>
            <td><%=cliente.getIdCliente()%></td>
            <td><%=cliente.getNombre()%></td>
            <td><%=cliente.getCargo()%></td>
            <td><%=cliente.getEmpresa()%></td>
            <td><%=cliente.getTelefono()%></td>
            <td><%=cliente.getMail()%></td>
        </tr>
    <%
        }
    %>
</table>
</div>
<br /><br />
</body>
</html>