import Foundation

public class Socio {
    private var nombre: String
    private var apellido: String
    private var ID: Int
    private var cantidadMaxEjemplares: Int
    private var ejemplaresTomados: [Ejemplar]
    public init (nombre: String, apellido: String, ID: Int){
        self.nombre = nombre
        self.apellido = apellido
        self.ID = ID
        self.cantidadMaxEjemplares = 0
        self.ejemplaresTomados = []
    }
    public func getCantidadMaxEjemplares ()-> Int {
        return cantidadMaxEjemplares
    }
    public func tieneCupoDisponible()->Bool {
        return ejemplaresTomados.count<getCantidadMaxEjemplares()
    }
    public func tomarPrestado(unEjemplar: Ejemplar)->Void {
        if tieneCupoDisponible() {
            ejemplaresTomados.append(unEjemplar.getPublicacion().prestarEjemplar())
        }
    }
    public func devolver(unEjemplar: Ejemplar)->Void{
        var indexAEliminar: Int? = nil
        for i in 0..<ejemplaresTomados.count {
            if ejemplaresTomados[i].getIdentificacion() == unEjemplar.getIdentificacion() {
                indexAEliminar = i
            }
        }
        if indexAEliminar != nil {
            ejemplaresTomados.remove(at: indexAEliminar!)
        }
    }
    public func getID()->Int{
        return ID
    }
}
