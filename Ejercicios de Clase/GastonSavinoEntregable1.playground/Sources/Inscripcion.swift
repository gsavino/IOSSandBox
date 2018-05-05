import Foundation

public class Inscripcion{
    private var alumno: Alumno
    private var curso: Curso
    private var fechaInscripcion: Date
    private var medioPago: String?
    
    public init(alumno:Alumno, curso:Curso){
        self.alumno = alumno
        self.curso = curso
        self.medioPago = nil
        self.fechaInscripcion = Date()
    }
    public init(alumno:Alumno, curso:Curso, medioPago: String){
        self.alumno = alumno
        self.curso = curso
        self.medioPago = medioPago
        self.fechaInscripcion = Date()
    }
    public func getMedioPago()->String?{
        return medioPago
    }
    public func setMedioPago(medioPago:String)->Void{
        self.medioPago = medioPago
    }
    public func getFechaInscripcion()->Date {
        return fechaInscripcion
    }
}
