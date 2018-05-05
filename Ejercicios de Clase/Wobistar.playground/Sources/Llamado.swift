import Foundation

public class Llamado{
    private var nroAlQueLlamo: Int
    private var fechaLlamado: Date
    private var duracion: Double
    private var costo: Double
    public init(nroAlQueLlamo: Int, duracion:Double, costo:Double){
        self.nroAlQueLlamo = nroAlQueLlamo
        self.duracion = duracion
        self.costo = costo
        self.fechaLlamado = Date()
    }
    public func getNroAlQueLlamo()->Int{
        return nroAlQueLlamo
    }
    public func getDuracion()->Double{
        return duracion
    }
    public func getCosto()->Double{
        return costo
    }
}
