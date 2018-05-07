import Foundation

public class BlueRay : Pelicula, Alquilable {
    private var estaAlquilada: Bool
    
    public override init (codigo: String, titulo: String, anio: Int, idiomaSubtitulo: String) {
        self.estaAlquilada = false
        super.init (codigo:codigo, titulo:titulo, anio:anio, idiomaSubtitulo:idiomaSubtitulo)
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
