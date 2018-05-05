//: Playground - noun: a place where people can play

import UIKit
print("Entregable numero 1 del curso de IOS")
print("Alumno: Gaston Savino")
print("\n ========================= Primera Parte del Entregable ============================== \n")

print("\n -1- ---------- Instanciacion del Manager ----------\n")
var manager = Manager()

print("\n -2- ---------- Alta de Profesores ----------\n")

print("-- Alta de profesores Adjuntos --\n")
manager.altaProfesorAdjunto(nombre: "Katherine", apellido: "Watson", codigoProfesor: 3, cantidadDeHoras: 100)
manager.altaProfesorAdjunto(nombre: "Dewey", apellido: "Finn", codigoProfesor: 4, cantidadDeHoras: 200)
print("\n-- Alta de profesores Titulares --\n")
manager.altaProfesorTitular(nombre: "John", apellido: "Keating", codigoProfesor: 1, especialidad: "Apple Basic")
manager.altaProfesorTitular(nombre: "Albus", apellido: "Dumbledore", codigoProfesor: 2, especialidad: "Algoritmos I")

print("\n -3- ---------- Alta de cursos ----------\n")

manager.altaCurso(nombreCurso: "IOS", codigoCurso: 20001, cupoMaximoDeAlumnos: 3)
manager.altaCurso(nombreCurso: "Android", codigoCurso: 20002, cupoMaximoDeAlumnos: 2)

print("\n -4- ---------- Asignacion de profesores ----------\n")

print("-- Trato de asignar un profesor con un codigo de profesor incorrecto --\n")
manager.asignarProfesores(codigoCurso:20002, codigoProfesorTitular: 4, codigoProfesorAdjunto: 5)
print("\n-- Asigno profesores correctamente --\n")
manager.asignarProfesores(codigoCurso:20001, codigoProfesorTitular: 1, codigoProfesorAdjunto: 4)
manager.asignarProfesores(codigoCurso: 20002, codigoProfesorTitular: 2, codigoProfesorAdjunto: 3)

print("\n -5- ---------- Alta de Alumnos ----------\n")

manager.altaAlumno(nombre: "Harry", apellido: "Potter", codigoAlumno: 1)
manager.altaAlumno(nombre: "Ron", apellido: "Weasley", codigoAlumno: 2)
manager.altaAlumno(nombre: "Hemione", apellido: "Granger", codigoAlumno: 3)
manager.altaAlumno(nombre: "Draco", apellido: "Malfoy", codigoAlumno: 4)

print("\n -6- ---------- Inscripcion de 2 Alumnos en el curso de IOS ----------\n")

manager.inscribirAlumno(codigoAlumno: 1, codigoCurso: 20001)
manager.inscribirAlumno(codigoAlumno: 2, codigoCurso: 20001)

print("\n -7- ---------- Inscripcion de 2 Alumnos en el curso de Android ----------\n")

manager.inscribirAlumno(codigoAlumno: 3, codigoCurso: 20002)
manager.inscribirAlumno(codigoAlumno: 4, codigoCurso: 20002)

print("\n -8- ---------- Inscribo otros dos alumnos al curso de IOS ----------\n")

manager.inscribirAlumno(codigoAlumno: 3, codigoCurso: 20001)
manager.inscribirAlumno(codigoAlumno: 4, codigoCurso: 20001)

print("\n -9- ---------- Inscripcion de un Alumno en un curso que no existe----------\n")

manager.inscribirAlumno(codigoAlumno: 2, codigoCurso: 30003)

print("\n -10- ---------- Inscripcion de un Alumno que no existe ----------\n")
manager.inscribirAlumno(codigoAlumno: 5, codigoCurso: 20001)

print("\n\n\n ========================= Adicional Destacado ============================== \n\n")

print("\n -1- ---------- Crear una guia teorica para el curso de IOS ----------\n")

manager.crearGuiaParaCurso(codigoCurso: 20001, codigoGuia: 1, cantidadPaginas: 50, costo: 1500.00, titulo: "The absolute IOS Dummy Guide", listaTemas: ["Como Compilar en PlayGround y no morir en el intento","Como Programar en una virtual y no perder la cordura"])

print("\n -2- ---------- Crear una guia Practica para el curso de IOS ----------\n")

manager.crearGuiaParaCurso(codigoCurso: 20001, codigoGuia: 2, cantidadPaginas: 80, costo: 325.72, titulo: "Diagramacion de Objetos usando UML", cantidadEjercicios: 20)

print("\n -3- ---------- Crear una guia Practica para el curso de Android y luego borrarla ----------\n")

manager.crearGuiaParaCurso(codigoCurso: 20002, codigoGuia: 5, cantidadPaginas: 33, costo: 200.10, titulo: "Sepa parque Android cuesta menos!", cantidadEjercicios: 11)
manager.eliminarGuiaDeCurso(codigoCurso: 20002, codigoGuia: 5)

print("\n -4- ---------- Crear una Guia Teorica y otra Practica pero para cursos que no existen ----------\n")

manager.crearGuiaParaCurso(codigoCurso: 30001, codigoGuia: 1, cantidadPaginas: 50, costo: 1500.00, titulo: "The absolute IOS Dummy Guide", listaTemas: ["Como Compilar en PlayGround y no morir en el intento","Como Programar en una virtual y no perder la cordura"])

manager.crearGuiaParaCurso(codigoCurso: 30001, codigoGuia: 9, cantidadPaginas: 80, costo: 325.72, titulo: "Todo lo que siempre quiso preguntar de IOS y nunca se animo", cantidadEjercicios: 20)

print("\n -5- ---------- Mostrar las Guias del curso de IOS ----------\n")

manager.mostrarGuiaDeCurso(codigoCurso: 20001)

print("\n -6- ---------- Imprimir la Guia Teorica del curso de IOS ----------\n")

manager.imprimirGuia(codigo: 1)

print("\n -7- ---------- Imprimir la Guia Practica del curso de IOS ----------\n")

manager.imprimirGuia(codigo: 2)

print("\n -8- ---------- Asignar la Guia 2 de IOS al curso de Android, ya que es util para ambos. ----------\n")

manager.agregarGuiaExistenteACurso(codigoCurso: 20002, codigoGuia: 2)

print("\n -9- ---------- Borrar el codigo de guia del curso de Android y verificar que aun existe para IOS ----------\n")

manager.eliminarGuiaDeCurso(codigoCurso: 20002, codigoGuia: 2)
manager.mostrarGuiaDeCurso(codigoCurso: 20001)

print("\n -10- ---------- Crear un nuevo Curso, crear una Guia para ese Curso y borrar el Curso ----------\n")
manager.altaCurso(nombreCurso: "JavaScript", codigoCurso: 20005, cupoMaximoDeAlumnos: 3)

manager.crearGuiaParaCurso(codigoCurso: 20005, codigoGuia: 9, cantidadPaginas: 80, costo: 325.72, titulo: "Todo lo que siempre quiso preguntar de JavaScript y nunca se animo", cantidadEjercicios: 20)

manager.bajaCurso(codigoCurso: 20005)

