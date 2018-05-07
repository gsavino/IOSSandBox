import Foundation

public class Oveja: Animal, Pastoreable {
    public init (patente: String, fechaNacimiento: Date, produccion: Int){
        super.init (produccion:produccion, patente:patente, fechaNacimiento:fechaNacimiento)
    }
    public func pastorear(){
        print("Soy una Oveja y puedo generar \(capacidad())")
    }}
