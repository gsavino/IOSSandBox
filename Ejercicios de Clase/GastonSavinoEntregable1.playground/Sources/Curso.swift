import Foundation

public class Curso {
    private var nombre: String
    private var codigo: Int
    private var profesorTitular: ProfesorTitular?
    private var profesorAdjunto: ProfesorAdjunto?
    private var cupoMaxAlumnos: Int
    private var inscriptos: [Alumno]
    private var codigosDeGuia: [Int]
    public init(nombre:String, codigo:Int, cupoMaxAlumnos:Int)
    {
        self.nombre = nombre
        self.codigo = codigo
        self.cupoMaxAlumnos = cupoMaxAlumnos
        profesorTitular = nil
        profesorAdjunto = nil
        inscriptos = []
        codigosDeGuia = []
    }

    public func agregarUnAlumno(unAlumno: Alumno)->Bool
    {
        if hayCupo() {
            inscriptos.append(unAlumno)
            print("Se ha agregado al alumno: \(unAlumno.getNombre()) \(unAlumno.getApellido())")
            return true
        } else {
            print("No hay cupo disponible para agregar al alumno  \(unAlumno.getNombre()) \(unAlumno.getApellido())")
            return false
        }
    }
    private func hayCupo()->Bool{
        return cupoMaxAlumnos > inscriptos.count
    }
    public func eliminarAlumno(unAlumno: Alumno)->Void
    {
        var alumnoAEliminar = 0
        var alumnoEliminado = false
        while !alumnoEliminado && inscriptos.count > 0
        {
            if inscriptos[alumnoAEliminar].getCodigo() == unAlumno.getCodigo(){
                inscriptos.remove(at: alumnoAEliminar)
                alumnoEliminado = true
                print("Se ha borrado al alumno: \(unAlumno.getNombre()) \(unAlumno.getApellido()) ")
            } else {
                alumnoAEliminar += 1
            }
        }
    }
    public func asignarProfesor(unTitular: ProfesorTitular, unAdjunto: ProfesorAdjunto)->Void
    {
        profesorTitular = unTitular
        profesorAdjunto = unAdjunto
    }
    public func getCodigo()->Int{
        return codigo
    }
    public func getNombre()->String{
        return nombre
    }
    public func agregarCodigoGuia(codigo: Int)->Void{
        if buscoCodigoGuia(codigo:codigo) == nil{
            codigosDeGuia.append(codigo)
        } else {
            print("El codigo \(codigo) ya existe en este curso y no es necesario agregrlo nuevamente!")
        }
    }
    public func eliminarCodigoGuia(codigo: Int)->Void{
        if let posicion = buscoCodigoGuia(codigo:codigo){
            codigosDeGuia.remove(at:posicion)
            print("Se ha borrado el codigo \(codigo) de este curso!")
        } else {
            print("El codigo \(codigo) no se pudo sacar del curso porque no estaba asignado a este curso!")
        }
    }
    public func buscoCodigoGuia(codigo:Int)->Int?
    {
        var posicion: Int? = nil
        var i : Int = 0
        while i < codigosDeGuia.count && posicion == nil
        {
            if codigosDeGuia[i] == codigo {
                posicion = i
                return posicion
            } else {
                i += 1
            }
        }
        return posicion
    }
    public func getCodigosDeGuia()->[Int]{
        return codigosDeGuia
    }
}
