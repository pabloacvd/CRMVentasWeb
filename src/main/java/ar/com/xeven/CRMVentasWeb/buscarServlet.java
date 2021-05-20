package ar.com.xeven.CRMVentasWeb;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "buscarServlet", value = "/buscarServlet")
public class buscarServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombreCliente = request.getParameter("nombreCliente");
        if(nombreCliente == null) {
            response.sendRedirect("index.jsp"); // lo devuelvo al buscador
        }else{
            //TODO validar si el cliente EXISTE!
            response.sendRedirect("editarCliente.jsp?nombreCliente="+nombreCliente);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
