package ar.com.xeven.CRMVentasWeb;

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

    public static Cliente buscarPorID(Integer idCliente) {
        Cliente cliente = new Cliente(
                idCliente, "nombre de mentira", "un cargo", "empresa falsa", "1234", "mail falso"
        );
        return cliente;
    }
}
