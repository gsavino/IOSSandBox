import Foundation

public class Gladiador {
    private var nombre:String
    private var vida:Int
    private var ataque:Int
    private var defensa:Int
    public init (nombre:String, vida:Int, ataque:Int, defensa:Int){
        self.nombre = nombre
        self.vida = vida
        self.ataque = ataque
        self.defensa = defensa
    }
    public func getNombre()->String{
        return nombre
    }
    public func getVida()->Int{
        return vida
    }
    public func getAtaque()->Int{
        return ataque
    }
    public func getDefensa()->Int{
        return defensa
    }
    public func setAtaque(porcentaje:Double)->Void{
        ataque = Int(Double(ataque) * (1.0+porcentaje))
    }
    public func setDefensa(porcentaje:Double)->Void{
        defensa = Int(Double(defensa) * (1.0+porcentaje))
        
    }
}
