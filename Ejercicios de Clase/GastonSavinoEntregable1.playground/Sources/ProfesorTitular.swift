import Foundation

public class ProfesorTitular: Profesor{
    private var especialidad: String
    public init(nombre:String, apellido:String, codigo:Int, especialidad:String){
        self.especialidad = especialidad
        super.init(nombre:nombre, apellido:apellido, codigo:codigo)
    }
    public func getEspecialidad()->String{
        return especialidad
    }
    public func setEspecialidad(especialidad:String)->Void{
        self.especialidad = especialidad
    }
}
