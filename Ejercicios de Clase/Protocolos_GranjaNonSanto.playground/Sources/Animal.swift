import Foundation

public class Animal: Negocio {
    private var patente : String
    private var fechaNacimiento : Date
    
    public init (produccion: Int, patente: String, fechaNacimiento: Date)
    {
        self.patente = patente
        self.fechaNacimiento = fechaNacimiento
        super.init(produccion:produccion)
        
    }
    
    public func getPatente()->String
    {
        return patente
    }
    public func getFechaNacimiento()->Date
    {
        return fechaNacimiento
    }
}
