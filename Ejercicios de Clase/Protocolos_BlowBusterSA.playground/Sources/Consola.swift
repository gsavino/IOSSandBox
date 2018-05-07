import Foundation
public class Consola: Alquilable {
    private var estaAlquilada: Bool
    private var tipoConsola: TipoConsola
    
    public init (tipoConsola: TipoConsola) {
        self.tipoConsola = tipoConsola
        self.estaAlquilada = false
    }
    public func alquilar() {
        estaAlquilada = true
    }
    public func devolver() {
        estaAlquilada = false
    }
    public func alquilado() -> Bool {
        return estaAlquilada
    }
}
