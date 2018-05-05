import Foundation

public class Publicacion {
    private var titulo: String
    private var ISBN: Int
    private var ejemplares: [Ejemplar]
    
    public init(titulo:String, ISBN: Int)
    {
        self.titulo = titulo
        self.ISBN = ISBN
        ejemplares = []
    }
    public func addEjemplar(ejemplar: Ejemplar)
    {
        ejemplares.append(ejemplar)
    }
    public func tieneEjemplarDisponible()->Bool
    {
        // alternativa retunr !ejemplares.isempty
        // return ejemplares.count > 0
        return !ejemplares.isEmpty
    }
    public func prestarEjemplar()->Ejemplar
    {
        var ejemplarAPrestar: Ejemplar
        ejemplarAPrestar = ejemplares.remove(at:0)
        return ejemplarAPrestar
    }
    public func reingresar(unEjemplar: Ejemplar)->Void
    {
        addEjemplar(ejemplar: unEjemplar)
    }
    public func getISBN()->Int{
        return ISBN
    }
    public func getTitulo()->String {
        return titulo
    }
    
}
