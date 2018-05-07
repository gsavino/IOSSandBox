import Foundation

//
// Clase Micro
//
public class Micro : Vehiculo {
    private var capacidadParados : Int
    private var parados: [Pasajero]
    
    public init (capacidadParados: Int, plazas: Int, recorrido:Recorrido) {
        self.capacidadParados = capacidadParados
        self.parados = []
        super.init(plazas:plazas, recorrido:recorrido)
    }

    public override func subirPasajero(pasajero: Pasajero)
    {
        // Pregunto si la capacidad de parados esta completa
        if capacidadParados > parados.count && !pasajero.getSoloSentado()
        {
                parados.append(pasajero)
        } else
        {
            super.subirPasajero(pasajero: pasajero)
        }
    }
    
        //    public func avisarParada(estacion: Estacion)->[Pasajero]
    public override func avisarParadaAParados (estacion: Estacion)->[Pasajero] {
       
        if getRecorrido().isParada(estacion: estacion)
        {
            var resultado: [Pasajero] = []
            for p in 0...parados.count
            {
                if estacion.isEstacion(est: parados[p].getEstacionLlegada())
                {
                    resultado.append(parados[p])
                    parados.remove(at: p)
                }
                return resultado
            }
        }
        print ("La estacion ingresada no pertenece al recorrido")
        return []
    }}
