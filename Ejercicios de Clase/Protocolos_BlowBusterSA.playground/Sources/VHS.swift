import Foundation

public class VHS: Pelicula {
    private var fechaFabricacion: String
    private var estaEnUso: Bool
    
    public init (codigo: String, titulo: String, anio: Int, idiomaSubtitulo: String, fechaFabricacion: String) {
        self.estaEnUso = false
        self.fechaFabricacion = fechaFabricacion
        super.init (codigo:codigo, titulo:titulo, anio:anio, idiomaSubtitulo:idiomaSubtitulo)
    }
    
    public func usar() {
        estaEnUso = true
    }
    public func dejarDeUsar() {
        estaEnUso = false
    }
}
