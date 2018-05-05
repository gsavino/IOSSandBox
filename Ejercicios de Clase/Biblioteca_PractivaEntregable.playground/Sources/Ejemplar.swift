import Foundation

public class Ejemplar {

    private var nroEdicion: Int
    private var ubicacion: String
    private var identificacion: Int
    private var publicacion: Publicacion
    
    public init (publicacion: Publicacion, nroEdicion: Int, ubicacion: String, identificacion: Int) {
        self.publicacion = publicacion
        self.nroEdicion = nroEdicion
        self.ubicacion = ubicacion
        self.identificacion = identificacion
    }
    public func getPublicacion()->Publicacion {
        return publicacion
    }
    public func getIdentificacion()->Int {
        return self.identificacion
    }
}
