import Foundation

public class NotificadorAccidentes {
    private var accidentados: [Socorredor]
    public init (){
        accidentados = []
    }
    public func pedirSocorro(patente:String) {
        for a in accidentados {
            a.socorrerCompetidor(patente:patente)
        }
    }
    public func agregarSocorredor(socorredor: Socorredor){
        accidentados.append(socorredor)
    }
    public func eliminarSocorredor(socorredor: Socorredor){
        
    }
}
