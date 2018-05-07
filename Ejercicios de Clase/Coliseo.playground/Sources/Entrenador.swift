import Foundation

public class Entrenador {
    private var nombre:String
    private var porcentajeQueSubeLosAtributos:Double
    public init (nombre:String, porcentajeQueSubeLosAtributos: Double){
        self.nombre = nombre
        self.porcentajeQueSubeLosAtributos  = porcentajeQueSubeLosAtributos
    }
    public func getPorcentajeQueSubeLosAtributos()->Double {
        return porcentajeQueSubeLosAtributos
    }
    public func getNombre()->String{
        return nombre
    }
}
