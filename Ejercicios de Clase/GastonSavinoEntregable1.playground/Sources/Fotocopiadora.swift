import Foundation

public class Fotocopiadora{
    private var guias: [Int:Guia]
    public init(){
        guias = [:]
    }
    public func agregarGuia(guia:Guia)->Void{
        guias[guia.getCodigo()] = guia
        print("Se agrego la guia \(guia.getCodigo()) al diccionario de la Fotocopiadora")
    }
    public func eliminarGuia(codigo:Int)->Void{
        guias[codigo] = nil
        print("Se elimino la guia \(codigo) del dicionario de la Fotocopiadora")
    }
    public func imprimir(codigo:Int)->Void{
        if let guia = guias[codigo] {
            print("La impresora esta imprimiendo la guia \(codigo)")
            guia.imprimir()
        } else {
            print("La fotocopiadora no pudo imprimir la Guia \(codigo) porque no estaba en el diccionario")
        }
    }
    public func existeGuia(codigo:Int)->Bool{
        for (cg,g) in guias {
            if cg == codigo{
                return true
            }
        }
        return false
    }
}
