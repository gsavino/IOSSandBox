import Foundation

//
// Clase Pasajero
//
public class Pasajero
{
    private var DNI: String
    private var soloSentado: Bool
    private var estacionLlegada: Estacion
    
    public init (soloSentado: Bool, estacionLlegada: Estacion, DNI: String)
    {
        self.soloSentado = soloSentado
        self.estacionLlegada = estacionLlegada
        self.DNI = DNI
    }
    public func getEstacionLlegada()-> Estacion
    {
        return estacionLlegada
    }
    public func getSoloSentado()-> Bool {
        return soloSentado
    }
}
