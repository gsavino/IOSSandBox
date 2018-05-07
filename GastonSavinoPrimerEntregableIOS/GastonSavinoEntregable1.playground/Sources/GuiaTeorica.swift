import Foundation

public class GuiaTeorica: Guia{
    private var listaTemas:[String]
    public override init(codigo: Int, cantidadPaginas: Int, costo: Double, titulo: String){
        self.listaTemas = []
        super.init(codigo:codigo, cantidadPaginas:cantidadPaginas, costo:costo, titulo:titulo)
    }
    public func agregarTema(tema:String)->Void{
        listaTemas.append(tema)
    }
    public func eliminarTema(tema:String)->Void{
        var posicion: Int = -1
        for i in 0..<listaTemas.count{
            if listaTemas[i] == tema {
                posicion = i
            }
        }
        if posicion >= 0 {
            listaTemas.remove(at: posicion)
            print("El tema \(tema) ha sido borrado")
        } else {
            print("No se encontro el tema \(tema)")
        }
    }
    public override func imprimir()->Void{
        print("Estoy imprimiendo la Guia Teorica \(super.getTitulo()) que contiene los temas ")
        for t in listaTemas {
            print("- \(t) ")
        }
    }
}
