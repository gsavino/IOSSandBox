import Foundation

public class Vaca: Animal, Pastoreable {
    public init (patente: String, fechaNacimiento: Date, produccion: Int){
        super.init (produccion:produccion, patente:patente, fechaNacimiento:fechaNacimiento)
    }
    public func pastorear(){
        print("Soy una vaca y puedo generar \(capacidad())")
    }
}
