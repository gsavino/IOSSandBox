import Foundation

public class Cocodrilo :Animal {
    public init (patente: String, fechaNacimiento: Date, produccion: Int){
        super.init (produccion:produccion, patente:patente, fechaNacimiento:fechaNacimiento)
    }    
}
