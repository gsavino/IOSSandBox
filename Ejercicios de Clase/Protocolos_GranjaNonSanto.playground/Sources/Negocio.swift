import Foundation

public class Negocio {
    private var produccion: Int
    public init (produccion: Int){
        self.produccion = produccion
    }
    public func capacidad()->Int{
        return produccion
    }
}
