import Foundation

public class Prestamo {
    private var socio: Socio
    private var ejemplar: Ejemplar
    private var fechaPrestamo: Date
    public init (socio: Socio, ejemplar: Ejemplar){
        self.socio = socio
        self.ejemplar = ejemplar
        self.fechaPrestamo = Date()
    }
}
