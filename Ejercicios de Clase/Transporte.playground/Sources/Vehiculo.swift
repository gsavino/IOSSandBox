import Foundation
//
// Clase Vehiculos
//
public class Vehiculo {
    private var plazas:Int
    private var ocupacion: [Pasajero]
    private var recorrido: Recorrido
    private var estaEn: Estacion?
    
    public init (plazas:Int, recorrido:Recorrido){
        self.plazas = plazas
        self.recorrido = recorrido
        ocupacion = []
        estaEn = nil
    }
    
    public func subirPasajero(pasajero: Pasajero)
    {
        if ocupacion.count < plazas
        {
            ocupacion.append(pasajero)
        } else {
            print ("El vehiculo esta lleno, por favor espere el proximo vehiculo")
        }
    }
    //
    //AvisarParada saca los usuarios que llegaron a su parada y devuelve la lista de pasajeros que
    //bajaron
    
    public func avisarParada(estacion: Estacion)->[Pasajero]
    {
        if recorrido.isParada(estacion: estacion)
        {
            estaEn = estacion
            var resultado: [Pasajero] = []
            for p in 0...ocupacion.count
            {
                if estacion.isEstacion(est: ocupacion[p].getEstacionLlegada())
                {
                    resultado.append(ocupacion[p])
                    ocupacion.remove(at: p)
                }
            }
            for parad in avisarParadaAParados(estacion: estacion) {
                resultado.append(parad)
            }
            return resultado        }
        print ("La estacion ingresada no pertenece al recorrido")
        return []
    }
    // avisar a Parados devuelve un array vacio ya que es el comportamiento de la mayoria
    public func avisarParadaAParados (estacion: Estacion)->[Pasajero]
    {
        return []
    }
    public func getRecorrido()->Recorrido {
        return recorrido
    }
}

