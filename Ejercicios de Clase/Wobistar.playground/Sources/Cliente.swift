import Foundation

public class Cliente{
    private var nroCliente:Int
    private var fechaIngreso:Date
    public init (nroCliente:Int){
        self.fechaIngreso = Date()
        self.nroCliente = nroCliente
    }
    
}
