import Foundation

public class Carrera {
    private var distancia: Int
    private var premioEnDolares: Double
    private var nombre:String
    private var cantidadDeCompetidoresPermitidos: Int
    private var listaDeCompetidores: [Competidor]
    
    public init (distancia: Int, premioEnDolares: Double, nombre:String, cantidadDeCompetidoresPermitidos: Int){
        self.distancia = distancia
        self.premioEnDolares = premioEnDolares
        self.nombre = nombre
        self.cantidadDeCompetidoresPermitidos = cantidadDeCompetidoresPermitidos
        listaDeCompetidores = []
    }
    public func darDeAltaMoto(velocidad: Int, aceleracion:Int, giro: Int, patente:String, meCuida:NotificadorAccidentes){
        var moto = Moto(velocidad: velocidad, aceleracion:aceleracion, giro:giro, patente:patente, meCuida:meCuida)
        listaDeCompetidores.append(moto)
    }
    public func darDeAltaAuto(velocidad: Int, aceleracion:Int, giro: Int, patente:String, meCuida:NotificadorAccidentes){
        var auto = Auto(velocidad: velocidad, aceleracion:aceleracion, giro:giro, patente:patente, meCuida:meCuida)
        listaDeCompetidores.append(auto)
        
    }
    public func eliminarCompetidor(competidor:Competidor){
        for i in 0..<listaDeCompetidores.count
        {
            if listaDeCompetidores[i].getPatente() == competidor.getPatente()
            {
                listaDeCompetidores.remove(at: i)
            }
        }
    }
    public func eliminarCompetidorConPatente(patente:String)
    {
        for i in 0..<listaDeCompetidores.count
        {
            if listaDeCompetidores[i].getPatente() == patente
            {
                listaDeCompetidores.remove(at: i)
            }
        }
    }
    public func elGanador()->Competidor
    {
        var ganador:Competidor = listaDeCompetidores[0]
        for i in listaDeCompetidores
        {
            if i.getCoef() > ganador.getCoef()
            {
                ganador = i
            }
        }
        return ganador
    }
    
    public func socorrer()
    {
        
    }
}
