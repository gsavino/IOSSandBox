import Foundation

public class Profesor{
    private var nombre: String
    private var apellido: String
    private var antiguedad: Int
    private var codigo: Int
    public init (nombre:String, apellido:String, codigo: Int){
        self.nombre = nombre
        self.apellido = apellido
        self.codigo = codigo
        antiguedad = 0
    }
    public func getAntiguedad()->Int{
        return antiguedad
    }
    public func setAntiguedad(anios: Int)->Void{
        antiguedad = anios
    }
    public func getCodigo()->Int{
        return codigo
    }
    public func getNombre()->String{
        return nombre
    }
}
