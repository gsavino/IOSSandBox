import Foundation

public class Libro: Publicacion, Imprimible
{
    private var autor: String

    
    public init(titulo:String, ISBN: Int, autor: String)
    {
        self.autor = autor
        super.init(titulo:titulo, ISBN:ISBN)

    }
    public func imprimir()->Void{
        print("Estoy imprimiendo un libro")
        var librotmp = Libro(titulo: self.getTitulo(), ISBN: self.getISBN(), autor: self.autor)
        var nuevoEjemplar = Ejemplar(publicacion: librotmp, nroEdicion: 2018, ubicacion:"A Definir", identificacion: -1)
    }
}

