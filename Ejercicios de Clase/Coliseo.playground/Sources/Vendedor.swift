import Foundation

public class Vendedor {
    private var nombre:String
    private var listaProductos:[Producto]
    private var listaVentas: [Venta]
    public init(nombre:String){
        self.nombre = nombre
        self.listaProductos = []
        self.listaVentas = []
    }
    public func getNombre()->String{
        return nombre
    }
    public func getListaProductos()->[Producto]{
        return listaProductos
    }
    public func addProducto(producto:Producto){
        listaProductos.append(producto)
    }
    public func vender(producto: Producto){
        if puedoVender(nombreProducto: producto.getNombre()){
            var venta = Venta(nombreProducto:producto.getNombre())
            listaVentas.append(venta)
        }
    }
    public func puedoVender(nombreProducto:String)->Bool{
        for p in listaProductos{
            if p.getNombre() == nombreProducto {
                return true
            }
        }
        return false
    }
    public func getVentas()->[Venta]{
        return listaVentas
    }
    public func rendirVentas()->Double{
        var totalVentasVendedor = 0.0
        for v in listaVentas {
            var producto = buscoProducto(nombre:v.getNombreProductoVendido())!
            totalVentasVendedor += producto.getPrecio()
        }
        listaVentas = []
        return totalVentasVendedor
    }
    public func buscoProducto(nombre:String)->Producto?{
        for p in listaProductos {
            if p.getNombre() == nombre {
                return p
            }
        }
        return nil
    }
}
