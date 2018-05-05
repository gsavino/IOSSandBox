import Foundation

public class Paper: Publicacion, Imprimible
{
    private var autor: [String]
    private var fechaPublicacion: Date
    private var resumen: String
    public init(titulo:String, ISBN: Int, autor:[String], resumen: String)
    {
        self.autor = autor
        self.resumen = resumen
        self.fechaPublicacion = Date()
        super.init(titulo:titulo, ISBN: ISBN)
    }
    public func imprimir()->Void
    {
        print("Estoy imprimiendo un paper")
        var paper = Paper(titulo: self.getTitulo(), ISBN: self.getISBN(), autor: self.autor, resumen: self.resumen)
        var nuevoEjemplar = Ejemplar(publicacion: paper, nroEdicion: 2018, ubicacion:"A Definir", identificacion: -1)
        
    }
}


