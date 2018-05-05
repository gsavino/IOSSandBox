import Foundation

public class ClienteIndividual:Cliente{
    private var DNI:String
    private var nombre:String
    private var apellido:String
    public init(nroCliente:Int, DNI:String, nombre:String, apellido:String){
        self.DNI = DNI
        self.nombre = nombre
        self.apellido = apellido
        super.init(nroCliente:nroCliente)
    }
}
