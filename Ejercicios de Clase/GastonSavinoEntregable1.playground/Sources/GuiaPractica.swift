import Foundation

public class GuiaPractica: Guia{
    private var cantidadEjercicios: Int
    public init(codigo:Int, cantidadPaginas:Int, costo:Double, titulo:String, cantidadEjercicios:Int){
        self.cantidadEjercicios = cantidadEjercicios
        super.init(codigo:codigo, cantidadPaginas:cantidadPaginas, costo:costo, titulo:titulo)
    }
    public override func imprimir()->Void{
        print("Estoy Imprimiendo la Guia Practica \(super.getTitulo()) de \(getCantidadEjercicios()) ejercicios")
    }
    public func getCantidadEjercicios()->Int{
        return cantidadEjercicios
    }
    public func setCantidadEjercicios(cantidad:Int)->Void{
        cantidadEjercicios = cantidad
    }
}
