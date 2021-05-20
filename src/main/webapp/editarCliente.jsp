<%@ page import="ar.com.xeven.CRMVentasWeb.Cliente" %>
<%@ page import="ar.com.xeven.CRMVentasWeb.ClienteDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String nombreCliente = request.getParameter("nombreCliente");
    String idClienteTexto = "";
    String empresa = "";
    String cargo = "";
    String telefono = "";
    String mail = "";
    if(nombreCliente!=null) { // estoy buscando un cliente real
        Cliente clienteBuscado = ClienteDAO.buscarPorNombre(nombreCliente);
        idClienteTexto = String.valueOf(clienteBuscado.getIdCliente());
        nombreCliente = clienteBuscado.getNombre();
        empresa = clienteBuscado.getEmpresa();
        cargo = clienteBuscado.getCargo();
        telefono = clienteBuscado.getTelefono();
        mail = clienteBuscado.getMail();
    }else{
        nombreCliente = "";
    }

%>
<html>
<head>
    <title>CRMVentas - <%= (idClienteTexto.isEmpty())?"Crear":"Editar"%> cliente</title>
    <style>
        body{padding: 15px;background-color: beige;}
        form{width: fit-content;}
        form input{margin-right: 5px;}
    </style>
</head>
<body>
  <h1><%= (idClienteTexto.isEmpty())?"Crear":"Editar"%> cliente</h1>
<form>
    <label>ID Cliente: </label><input type="text" name="idCliente" value="<%=idClienteTexto%>" disabled><br /><br />
    <label>Nombre: </label><input type="text" name="nombre" value="<%=nombreCliente%>"><br /><br />
    <label>Empresa: </label><input type="text" name="empresa" value="<%=empresa%>"><br /><br />
    <label>Cargo: </label><input type="text" name="cargo" value="<%=cargo%>"><br /><br />
    <label>Teléfono: </label><input type="text" name="telefono" value="<%=telefono%>"><br /><br />
    <label>Mail: </label><input type="text" name="mail" value="<%=mail%>"><br /><br /><br />
    <button type="submit">Guardar</button>
</form>

</body>
</html>
