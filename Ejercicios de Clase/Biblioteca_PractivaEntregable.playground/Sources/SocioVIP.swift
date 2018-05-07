import Foundation

public class SocioVIP: Socio {
    private var cuotaMensual: Double
    private var cantidadMaxEjemplares: Int
    public init(nombre: String, apellido: String, ID: Int, cuotaMensual: Double){
        self.cuotaMensual = cuotaMensual
        self.cantidadMaxEjemplares = 15
        super.init(nombre:nombre, apellido:apellido, ID:ID)
    }
        public func getCantMaxEjemplares()->Int
        {
            return 15
        }
}
