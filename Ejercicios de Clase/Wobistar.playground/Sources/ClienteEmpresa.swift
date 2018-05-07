import Foundation

public class ClienteEmpresa:Cliente {
    private var CUIT: String
    private var nombreFantasia: String
    public init (nroCliente:Int, CUIT:String, nombreFantasia:String){
        self.CUIT = CUIT
        self.nombreFantasia = nombreFantasia
        super.init(nroCliente:nroCliente)
    }
}
