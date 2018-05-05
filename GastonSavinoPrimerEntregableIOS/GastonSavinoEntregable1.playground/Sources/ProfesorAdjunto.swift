import Foundation

public class ProfesorAdjunto: Profesor{
    private var capacidadHorasConsulta: Int
    public init(nombre:String, apellido:String, codigo:Int, capacidadHorasConsulta:Int){
        self.capacidadHorasConsulta = capacidadHorasConsulta
        super.init(nombre:nombre, apellido:apellido, codigo:codigo)
    }
    public func getCapacidadHorasConsulta()->Int{
        return capacidadHorasConsulta
    }
    public func setCapacidadHorasConsulta(horasDisponibles: Int)->Void{
        capacidadHorasConsulta = horasDisponibles
    }
}
