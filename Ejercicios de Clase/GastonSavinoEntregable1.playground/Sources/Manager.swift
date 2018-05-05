import Foundation

public class Manager{
    private var alumnos: [Alumno]
    private var profesores: [Profesor]
    private var cursos: [Curso]
    private var inscripciones: [Inscripcion]
    private var fotocopiadora: Fotocopiadora
    public init (){
        self.alumnos = []
        self.profesores = []
        self.cursos = []
        self.inscripciones = []
        self.fotocopiadora = Fotocopiadora()
    }
    public func altaCurso(nombreCurso:String, codigoCurso:Int, cupoMaximoDeAlumnos:Int)->Void
    {
        let nuevoCurso = Curso(nombre:nombreCurso, codigo:codigoCurso, cupoMaxAlumnos: cupoMaximoDeAlumnos)
        cursos.append(nuevoCurso)
        print("Se ha creado el curso \(nuevoCurso.getNombre()) exitosamente!")
    }
    public func bajaCurso(codigoCurso: Int)->Void
    {
        var cursoAEliminar = 0
        var cursoEliminado = false
        while !cursoEliminado && cursos.count > 0
        {
            if cursos[cursoAEliminar].getCodigo() == codigoCurso {
                //Elimino las guias de ese curso antes de eliminar el curso
                for c in cursos[cursoAEliminar].getCodigosDeGuia() {
                    eliminarGuiaDeCurso(codigoCurso:codigoCurso, codigoGuia:c)
                }
                cursos.remove(at: cursoAEliminar)
                cursoEliminado = true
                print("Se ha borrado el curso: \(codigoCurso) ")
            } else {
                cursoAEliminar += 1
            }
        }
    }
    public func altaProfesorAdjunto(nombre:String, apellido:String, codigoProfesor:Int, cantidadDeHoras:Int)->Void
    {
        let unProfesor = ProfesorAdjunto(nombre:nombre, apellido:apellido, codigo:codigoProfesor, capacidadHorasConsulta: cantidadDeHoras)
        profesores.append(unProfesor)
        print("Se ha creado el profesor \(unProfesor.getNombre()) exitosamente!")
    }
    public func altaProfesorTitular(nombre:String, apellido:String, codigoProfesor: Int, especialidad:String)->Void
    {
        let unProfesor = ProfesorTitular(nombre:nombre, apellido:apellido, codigo:codigoProfesor, especialidad:especialidad)
        profesores.append(unProfesor)
        print("Se ha creado el profesor \(unProfesor.getNombre()) exitosamente!")
    }
    public func bajaProfesor(codigoProfesor:Int)->Void
    {
        var profesorAEliminar = 0
        var profesorEliminado = false
        while !profesorEliminado && profesores.count > 0
        {
            if profesores[profesorAEliminar].getCodigo() == codigoProfesor {
                profesores.remove(at: profesorAEliminar)
                profesorEliminado = true
                print("Se ha borrado el profesor: \(codigoProfesor) ")
            } else {
                profesorAEliminar += 1
            }
        }
    }
    public func altaAlumno(nombre:String, apellido:String, codigoAlumno:Int)->Void
    {
        let unAlumno = Alumno(nombre:nombre, apellido:apellido, codigo:codigoAlumno, contacto:"SinMail")
        alumnos.append(unAlumno)
        print("Se ha dado de alta exitosamente al alumno \(unAlumno.getNombre()) \(unAlumno.getApellido())")
    }
    public func inscribirAlumno(codigoAlumno:Int, codigoCurso:Int)->Void
    {
        let alumno = buscarAlumno(codigo: codigoAlumno)
        let curso = buscarCurso(codigo: codigoCurso)
        if alumno != nil && curso != nil {
            if curso!.agregarUnAlumno(unAlumno: alumno!) {
                let inscripcion = Inscripcion(alumno: alumno!, curso: curso!, medioPago:"Efectivo")
                inscripciones.append(inscripcion)
                print("Se ha inscripto exitosamente al alumno \(alumno!.getNombre()) en el curso \(curso!.getNombre())")
            } else {
                print("Lo lamento mucho, no hay cupo para este curso, debera anotarse el proximo semestre...")
            }
        } else {
            print("No se ha podido asignar el Alumno al Curso...")
        }
    }
    public func asignarProfesores(codigoCurso: Int, codigoProfesorTitular:Int, codigoProfesorAdjunto:Int)->Void
    {
        let profesorTitular = buscarProfesor(codigo: codigoProfesorTitular)
        let profesorAdjunto = buscarProfesor(codigo: codigoProfesorAdjunto)
        let curso = buscarCurso(codigo: codigoCurso)
        if let profTitular = profesorTitular as? ProfesorTitular{
            if let profAdjunto = profesorAdjunto as? ProfesorAdjunto{
                if curso != nil  {
                    curso!.asignarProfesor(unTitular: profTitular, unAdjunto:profAdjunto)
                    print("He asignado al profesor titular \(profTitular.getNombre()) y al profesor adjunto \(profAdjunto.getNombre()) al curso de \(curso!.getNombre())!")
                } else {print("El curso es erroneo, verifique el codigo de curso!")}
            } else
            {
                print("El profesor Adjunto es incorrecto, por favor verifique el codigo de Adjunto!")
            }
        } else
        {
            print("El profesor Titular es incorrecto, por favor verifique el codigo de Titular!")
        }
    }
    private func buscarAlumno(codigo:Int)->Alumno?{
        for a in alumnos {
            if a.getCodigo() == codigo {
                return a
            }
        }
        print("No se ha encontrado al Alumno, verifique el codigo de Alumno!")
        return nil
    }
    private func buscarCurso(codigo:Int)->Curso?{
        for c in cursos {
            if c.getCodigo() == codigo{
                return c
            }
        }
        print("No se ha encontrado el curso, verifique el codigo de Curso!")
        return nil
    }
    private func buscarProfesor(codigo:Int)->Profesor?{
        for p in profesores {
            if p.getCodigo() == codigo{
                return p
            }
        }
        print("No se ha podido encontrar al Profesor!, verifique el codigo de Profesor!")
        return nil
    }
    public func crearGuiaParaCurso(codigoCurso:Int, codigoGuia codigo: Int, cantidadPaginas: Int, costo: Double, titulo: String, listaTemas:[String])->Void
    {
        if let curso = buscarCurso(codigo:codigoCurso)
        {
            if !fotocopiadora.existeGuia(codigo:codigo) && curso.buscoCodigoGuia(codigo:codigo) == nil
            {
                let nuevaGuia = GuiaTeorica(codigo:codigo, cantidadPaginas:cantidadPaginas, costo:costo, titulo:titulo)
                for t in listaTemas {
                    nuevaGuia.agregarTema(tema: t)
                }
                curso.agregarCodigoGuia(codigo:codigo)
                fotocopiadora.agregarGuia(guia:nuevaGuia)
                print("Se ha agregado la Guia Teorica \(codigo) al curso \(codigoCurso)")
            } else {
                print("La Guia ya existe, igualmente intento agregarla.")
                agregarGuiaExistenteACurso(codigoCurso:codigoCurso, codigoGuia:codigo)
            }

        } else {
            print("No se ha podido agregar la Guia al curso \(codigoCurso) ya que el curso no existe!")
        }
    }
    public func crearGuiaParaCurso(codigoCurso:Int,codigoGuia codigo:Int, cantidadPaginas:Int, costo:Double, titulo:String, cantidadEjercicios:Int)->Void
    {
        if let curso = buscarCurso(codigo:codigoCurso)
        {
            if !fotocopiadora.existeGuia(codigo:codigo) && curso.buscoCodigoGuia(codigo:codigo) == nil
            {
                let nuevaGuia = GuiaPractica(codigo:codigo, cantidadPaginas:cantidadPaginas, costo:costo, titulo:titulo, cantidadEjercicios:cantidadEjercicios)
                curso.agregarCodigoGuia(codigo:codigo)
                fotocopiadora.agregarGuia(guia:nuevaGuia)
                print("Se ha agregado la Guia Practica \(codigo) al curso \(codigoCurso)")
            } else {
                print("La Guia ya existe, igualmente intento agregarla.")
                agregarGuiaExistenteACurso(codigoCurso:codigoCurso, codigoGuia:codigo)
            }
        } else {
            print("No se ha podido agregar la Guia al curso \(codigoCurso) ya que el curso no existe!")
        }
    }
    public func agregarGuiaExistenteACurso(codigoCurso:Int, codigoGuia:Int)->Void
    {
        //verifico que exita la guia y el curso, tambien verifico que la guia no este preciamente en el curso
        //luego agrego la guia al curso
        if let curso = buscarCurso(codigo: codigoCurso)
        {
            if fotocopiadora.existeGuia(codigo:codigoGuia)
            {
                if curso.buscoCodigoGuia(codigo:codigoGuia) == nil
                {
                    curso.agregarCodigoGuia(codigo:codigoGuia)
                    print("Se agrego la guia \(codigoGuia) al curso \(codigoCurso)")
                } else
                {
                    print("La Guia ya existe en el este curso, no puede agregarla nuevamente!")
                }
            } else
            {
                print("El codigo de Guia \(codigoGuia) no se puede agregar porque no existe en la Fotocopiadora!")
            }
        } else
        {
            print("El curso \(codigoCurso) no existe, verifique el codigo de curso!")
        }
    }
    public func eliminarGuiaDeCurso(codigoCurso: Int, codigoGuia:Int)->Void
    {
        //saco la guia de un curso y luego me fijo si existe la guia en otro curso, de no ser asi tambien la saco de la fotocopiadora
        if let curso = buscarCurso(codigo:codigoCurso)
        {
            curso.eliminarCodigoGuia(codigo:codigoGuia)
            if !estaLaGuiaEnUso(codigo: codigoGuia)
            {
                fotocopiadora.eliminarGuia(codigo:codigoGuia)
                print("La Guia \(codigoGuia) fue totalmente eliminada de todos lados")
            } else
            {
                print("La guia \(codigoGuia) se saco del curso \(codigoCurso), pero aun hay otros cursos que la usan, la Guia seguira existiendo en otros cursos y en la impresora.")
            }
        } else
        {
            print("No puedo sacar la Guia \(codigoGuia) porque el curso \(codigoCurso) no existe!")
        }
        
    }
    private func estaLaGuiaEnUso(codigo: Int)->Bool{
        var i = 0
        var posicion: Int? = nil
        while i < cursos.count && posicion == nil {
            posicion = cursos[i].buscoCodigoGuia(codigo:codigo)
            i += 1
        }
        if posicion == nil {
            return false
        } else {
            return true
        }
    }
    public func mostrarGuiaDeCurso (codigoCurso codigo:Int)->Void{
        if let curso = buscarCurso(codigo: codigo){
            for cg in curso.getCodigosDeGuia() {
                print("El curso \(codigo) tiene la guia \(cg)")
            }
        } else {
            print("No puedo imprimir las Guias porque no encuentro el curso \(codigo), verifique la informacion!")
        }
    }
    public func imprimirGuia(codigo: Int)->Void{
        fotocopiadora.imprimir(codigo:codigo)
    }
}
