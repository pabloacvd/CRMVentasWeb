package ar.com.xeven.CRMVentasWeb;

public class ClienteDAO {

    public static Cliente buscarPorNombre(String nombreCliente) {
        Cliente cliente = new Cliente();
        cliente.setIdCliente(23);
        cliente.setNombre(nombreCliente);
        cliente.setCargo("un cargo");
        cliente.setEmpresa("una empresa");
        cliente.setMail("un mail");
        cliente.setTelefono("123456789");
        return cliente;
    }

}
