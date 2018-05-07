import Foundation

//
// Clase Recorrido
//
public class Recorrido
{
    private var paradas: [Estacion]
    
    public init (){
        paradas = []
    }
    public func setParada(estacion: Estacion)
    {
        paradas.append(estacion)
    }
    public func getParada()->[Estacion]
    {
        return paradas
    }
    public func isParada(estacion: Estacion)->Bool
    {
        for para in paradas {
            if estacion.isEstacion(est: para) {
                return true
            }
        }
        return false
    }
}
