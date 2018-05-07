import Foundation

public class Pollo: Animal, Pastoreable {
    public init (patente: String, fechaNacimiento: Date, produccion: Int){
        super.init (produccion:produccion, patente:patente, fechaNacimiento:fechaNacimiento)
    }
    public func pastorear(){
        print("Soy una Pollo y puedo generar \(capacidad())")
    }}
