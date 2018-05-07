import Foundation

public class Pelicula {
    private var codigo: String
    private var titulo: String
    private var anio: Int
    private var idiomaSubtitulo: String
    
    public init (codigo: String, titulo: String, anio: Int, idiomaSubtitulo: String){
        self.codigo = codigo
        self.titulo = titulo
        self.anio = anio
        self.idiomaSubtitulo = idiomaSubtitulo
    }
}
