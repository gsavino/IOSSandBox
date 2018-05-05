import Foundation

public class Competidor {
    private var velocidad: Int
    private var aceleracion: Int
    private var giro: Int
    private var patente:String
    private var meCuida: NotificadorAccidentes
    public init (velocidad:Int, aceleracion:Int, giro:Int, patente:String, meCuida: NotificadorAccidentes){
        self.velocidad = velocidad
        self.aceleracion  = aceleracion
        self.giro = giro
        self.patente = patente
        self.meCuida = meCuida
    }
    public func getPeso()-> Int{
        return 0
    }
    public func getRuedas()-> Int{
        return 0
    }
    public func getPatente()->String{
        return patente
    }
    public func getCoef()->Double{
        return Double(velocidad)*0.5*Double(aceleracion)/(Double(giro)*Double(getPeso()-getRuedas()*100))
    }
    public func getNotificadorAccidentes()->NotificadorAccidentes {
        return meCuida
    }
}
