import Foundation

public class Venta{
    private var nombreProducto:String
    private var fechaVenta:Date
    public init(nombreProducto:String){
        self.nombreProducto = nombreProducto
        self.fechaVenta = Date()
    }
    public func getNombreProductoVendido()->String{
        return nombreProducto
    }
    public func getFechaVenta()->Date{
        return fechaVenta
    }
}
