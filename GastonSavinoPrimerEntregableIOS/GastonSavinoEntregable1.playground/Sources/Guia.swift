import Foundation

public class Guia{
    private var codigo: Int
    private var cantidadPaginas: Int
    private var costo: Double
    private var titulo: String
    public init(codigo: Int, cantidadPaginas: Int, costo: Double, titulo: String){
        self.codigo = codigo
        self.cantidadPaginas = cantidadPaginas
        self.costo = costo
        self.titulo = titulo
    }
    public func getCodigo()->Int{
        return codigo
    }
    public func getCantidadPaginas()->Int{
        return cantidadPaginas
    }
    public func getCosto()->Double{
        return costo
    }
    public func getTitulo()->String{
        return titulo
    }
    public func setCosto(costo:Double)->Void{
        self.costo = costo
    }
    public func imprimir()->Void{
        print("Esto no se deberia imprimir nunca!")
    }
}
