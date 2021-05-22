package ar.com.xeven.CRMVentasWeb;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class ClienteDAO {

    public static List<Cliente> getClientes(){
        return (List<Cliente>) List.of(
                new Cliente(1, "sabri","ceo","ada","1234","sabri@empresa.com"),
                new Cliente(2, "jazmin","ciso","xeven","1234","jazmin@empresa.com"),
                new Cliente(3, "vane","cto","ada","1234","vane@empresa.com"),
                new Cliente(4, "juli","gte sistemas","xeven","1234","juli@empresa.com"),
                new Cliente(5, "agus","gte infra","nasa","1234","agus@empresa.com"),
                new Cliente(6, "natalia","jefa seguridad","discord","1234","natalia@empresa.com")
        );
    }

    public static Cliente buscarPorNombre(String nombreCliente) {
        Cliente cliente = new Cliente();

        try {
            //TODO en la siguiente linea pongan sus datos
            ConexionDB conexionDB = new ConexionDB("crmventas", "root", "unafacil");
            // Acá no usé un prepared statement, directamente paso la query -> NO hagan esto en sus casas!
            ResultSet rs = conexionDB.consultar("SELECT * FROM clientes WHERE nombre LIKE '%" + nombreCliente + "%'");
            if (rs != null)
                while (rs.next()) {
                    cliente.setIdCliente(rs.getInt("idCliente"));
                    cliente.setNombre(rs.getString("nombre"));
                    cliente.setCargo(rs.getString("cargo"));
                    cliente.setEmpresa(rs.getString("empresa"));
                    cliente.setMail(rs.getString("mail"));
                    cliente.setTelefono(rs.getString("telefono"));
                }
            conexionDB.cerrar();
        }catch (SQLException e){ e.printStackTrace(); }

        cliente.setNombre(nombreCliente);
        cliente.setCargo("un cargo");
        cliente.setEmpresa("una empresa");
        cliente.setMail("mail");
        cliente.setTelefono("123456789");
        return cliente;
    }

    public static void guardarCliente(Cliente unCliente) {
        // este método guarda clientes
    }
}
