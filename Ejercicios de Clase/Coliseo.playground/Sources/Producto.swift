import Foundation

public class Producto{
    private var nombre:String
    private var precio:Double
    public init (nombre:String, precio:Double){
        self.nombre = nombre
        self.precio = precio
    }
    public func getPrecio()->Double{
        return precio
    }
    public func getNombre()->String{
        return nombre
    }
}
