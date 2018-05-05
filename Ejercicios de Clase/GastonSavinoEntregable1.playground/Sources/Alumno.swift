import Foundation

public class Alumno {
    private var nombre: String
    private var apellido: String
    private var codigo: Int
    private var contacto: String?
    public init(nombre:String, apellido:String, codigo:Int)
    {
        self.nombre = nombre
        self.apellido = apellido
        self.codigo = codigo
        self.contacto = nil
    }
    public init(nombre:String, apellido:String, codigo:Int, contacto:String)
    {
        self.nombre = nombre
        self.apellido = apellido
        self.codigo = codigo
        self.contacto = contacto
    }
    public func getNombre()->String{
        return  nombre
    }
    public func getApellido()->String{
        return apellido
    }
    public func getCodigo()->Int{
        return codigo
    }
    public func getContacto()->String?{
        return contacto
    }
    public func setContacto(contacto:String)->Void{
        self.contacto = contacto
    }
}
