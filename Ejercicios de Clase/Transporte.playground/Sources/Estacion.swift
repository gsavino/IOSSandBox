import Foundation

//
// Clase Estacion
//
public class Estacion
{
    private var nombre: String
    public init (nombre: String) {
        self.nombre = nombre
    }
    public func getEstacion ()-> String {
        return nombre
    }
    public func setEstacion(nombre: String) {
        self.nombre = nombre
    }
    public func isEstacion(est: Estacion)->Bool
    {
        if est.nombre == self.nombre {
            return true
        } else {
            return false
        }
    }
}
