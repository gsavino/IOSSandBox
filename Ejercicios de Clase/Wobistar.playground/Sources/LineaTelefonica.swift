import Foundation

public class LineaTelefonica{
    private var nroTelefono: Int
    private var clienteTitular: Cliente
    private var planAsociado: Plan
    private var listaLlamados: [Llamado]
    public init (nroTelefono:Int, clienteTitular:Cliente, planAsociado:Plan){
        self.nroTelefono = nroTelefono
        self.clienteTitular = clienteTitular
        self.planAsociado = planAsociado
        listaLlamados = []
    }
    public func llamarA(telefono: LineaTelefonica, duracion:Double){
    
        let llamado = Llamado(nroAlQueLlamo: telefono.getNumero(), duracion:duracion, costo:getCosto(duracion:duracion))
        listaLlamados.append(llamado)
    }
    public func getNumero()->Int{
        return nroTelefono
    }
    public func getCosto(duracion: Double)->Double{
        return planAsociado.costo() * duracion
        
    }
}
//nroAlQueLlamo: Int, duracion:Double, costo:Double
