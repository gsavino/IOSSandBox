import Foundation

public class Revista: Publicacion {
    private var autor: String
    private var fechaPublicacion: Date
    
    public init(titulo:String, ISBN: Int, autor: String){
        self.autor = autor
        self.fechaPublicacion = Date()
        super.init(titulo:titulo, ISBN:ISBN)
    }
}



