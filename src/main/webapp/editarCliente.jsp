<%@ page import="ar.com.xeven.CRMVentasWeb.Cliente" %>
<%@ page import="ar.com.xeven.CRMVentasWeb.ClienteDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String idClienteTexto = (request.getParameter("idCliente")!=null)?request.getParameter("idCliente"):"";
    String nombreCliente = "";
    String empresa = "";
    String cargo = "";
    String telefono = "";
    String mail = "";
    if(!idClienteTexto.isEmpty()) { // estoy buscando un cliente real
        Integer idCliente = Integer.valueOf(idClienteTexto);
        Cliente clienteBuscado = ClienteDAO.buscarPorID(idCliente);
        nombreCliente = clienteBuscado.getNombre();
        empresa = clienteBuscado.getEmpresa();
        cargo = clienteBuscado.getCargo();
        telefono = clienteBuscado.getTelefono();
        mail = clienteBuscado.getMail();
    }

%>
<html>
<head>
    <title>CRMVentas - <%= (nombreCliente.isEmpty())?"Crear":"Editar"%> cliente</title>
    <style>
        body{padding: 15px;background-color: beige;}
        form{width: fit-content;text-align: right;}
        form input{padding: 3px;}
    </style>
</head>
<body>
  <h1><%= (nombreCliente.isEmpty())?"Crear":"Editar"%> cliente</h1>
<form action="guardarClienteServlet" method="post">
    <label>ID Cliente: </label><input type="text" name="idCliente" value="<%=idClienteTexto%>" disabled><br /><br />
    <label>Nombre: </label><input type="text" name="nombre" value="<%=nombreCliente%>"><br /><br />
    <label>Empresa: </label><input type="text" name="empresa" value="<%=empresa%>"><br /><br />
    <label>Cargo: </label><input type="text" name="cargo" value="<%=cargo%>"><br /><br />
    <label>Teléfono: </label><input type="text" name="telefono" value="<%=telefono%>"><br /><br />
    <label>Mail: </label><input type="text" name="mail" value="<%=mail%>"><br /><br /><br />
    <button type="submit">Guardar</button>
    <button type="submit" formaction="index.jsp">Cancelar</button>
</form>

</body>
</html>
