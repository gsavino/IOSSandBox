import Foundation

public class CorredorApuestas: ListenerJuego
{
    private var patrimonio: Double
    public init() {
        patrimonio = 0
    }
    public func serNotificado(resultado: [Int]){
        patrimonio += 1000
        print("mi patrimonio es de \(patrimonio)")
    }
}
