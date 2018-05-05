import Foundation

public class Coliseo {
    private var gladiadores:[Gladiador]
    private var entrenadores:[Entrenador]
    private var entrenadorAsignadoA: [String:String]
    private var vendedores:[Vendedor]
    private var registroVentas: [Date:Double]
    public init(){
        gladiadores = []
        entrenadores = []
        entrenadorAsignadoA = [:]
        vendedores = []
        registroVentas = [:]
    }
    public func inscribirGladiador(nombre:String, vida:Int, ataque:Int, defensa:Int ){
        var gladiador = Gladiador(nombre:nombre, vida:vida, ataque:ataque, defensa:defensa)
        gladiadores.append(gladiador)
    }
    public func eliminarGladiador(nombre:String){
        for g in 0..<gladiadores.count {
            if gladiadores[g].getNombre() == nombre {
                gladiadores.remove(at: g)
            }
        }
    }
    public func inscribirEntrenador(nombre:String, porcentajeQueSubeLosAtributos:Double){
        var entrenador = Entrenador(nombre:nombre, porcentajeQueSubeLosAtributos:porcentajeQueSubeLosAtributos)
        entrenadores.append(entrenador)
    }
    public func entrenadorEntranA(nombreEntrenador:String, nombreGladiador:String){
        if verificoEntrenador(nombre:nombreEntrenador) && verificoGladiador(nombre:nombreGladiador) {
            entrenadorAsignadoA[nombreEntrenador] = nombreGladiador
        }
    }
    public func comenzarPretemporada(){
        for (nombreEntrenador, nombreGladiador) in entrenadorAsignadoA {
            if let gladiador = buscoGladiador(nombre:nombreGladiador) {
                if let entrenador = buscoEntrenador(nombre:nombreEntrenador) {
                   var porcentaje = entrenador.getPorcentajeQueSubeLosAtributos()
                    gladiador.setAtaque(porcentaje:porcentaje)
                    gladiador.setDefensa(porcentaje:porcentaje)
                }
            }
        }
    }
    public func buscoEntrenador(nombre:String)->Entrenador?{
        for e in entrenadores {
            if e.getNombre() == nombre {
                return e
            }
        }
        return nil
    }
    public func buscoGladiador(nombre:String)->Gladiador? {
        for g in gladiadores {
            if g.getNombre() == nombre {
                return g
            }
        }
        return nil
    }
    public func verificoEntrenador(nombre:String)->Bool{
        for e in entrenadores {
            if e.getNombre() == nombre {
                return true
            }
        }
        return false
    }
    public func verificoGladiador(nombre:String)->Bool{
        for g in gladiadores {
            if g.getNombre() == nombre {
                return true
            }
        }
        return false
    }
    public func agregarVendedor(vendedor:Vendedor){
        vendedores.append(vendedor)
    }
    public func rendicionVentas()->Void{
        var totalVentas:Double = 0
        for v in vendedores {
            totalVentas += v.rendirVentas()
        }
        registroVentas[Date()] = totalVentas
    }
}
