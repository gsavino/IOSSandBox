import Foundation

public class Categoria {
    private var nombre: String
    private var codigo: Int
    private var descripcion: String
    public init (nombre: String, codigo: Int, descripcion: String){
        self.nombre = nombre
        self.codigo = codigo
        self.descripcion = descripcion
    }
    public func getNombre()->String {
        return nombre
    }
    public func getCodigo()->Int {
        return codigo
    }
    public func getDescripcion()->String {
        return descripcion
    }
}
