package ar.com.xeven.CRMVentasWeb;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "guardarClienteServlet", value = "/guardarClienteServlet")
public class guardarClienteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("index.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer idCliente = 0;
        String idClienteTexto = request.getParameter("idCliente");
        if(idClienteTexto!=null)
            idCliente = Integer.valueOf(idClienteTexto);
        String nombre = request.getParameter("nombre");
        String empresa = request.getParameter("empresa");
        String cargo = request.getParameter("cargo");
        String telefono = request.getParameter("telefono");
        String mail = request.getParameter("mail");

        Cliente unCliente = new Cliente(idCliente, nombre, cargo, empresa, telefono, mail);

        ClienteDAO.guardarCliente(unCliente);

        response.sendRedirect("index.jsp?guardar=ok");
    }
}
