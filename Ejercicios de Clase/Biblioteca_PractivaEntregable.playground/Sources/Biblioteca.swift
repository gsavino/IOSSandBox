import Foundation

public class Biblioteca {
    private var publicaciones:[Publicacion]
    private var socios:[Socio]
    private var prestamos:[Prestamo]
    private var categorias:[Categoria]
    private var dicCategorias: [Int: [Publicacion]]
    public init(){
        self.publicaciones = []
        self.socios = []
        self.prestamos = []
        self.categorias = []
        self.dicCategorias = [:]
    }
    public func darDeAlta(publicacion: Publicacion){
        publicaciones.append(publicacion)
    }
    public func darDeAlta(socio: Socio){
        socios.append(socio)
    }
    public func prestar(isbn: Int, socioID: Int)
    {
        var unSocio: Socio?
        var unEjemplar: Ejemplar?
        unSocio = getSocioByID(id: socioID)
        unEjemplar = getEjemplarByISBN(isbn: isbn)
        if unSocio != nil
        {
            let socioOK = unSocio!
            if unEjemplar != nil && socioOK.tieneCupoDisponible()
            {
                socioOK.tomarPrestado(unEjemplar: unEjemplar!)
                let ejemplarAprestar = unEjemplar!.getPublicacion().prestarEjemplar()
                let prestamo = Prestamo(socio: socioOK, ejemplar: ejemplarAprestar)
                prestamos.append(prestamo)
                
            } else
            {
                print("Hay un problema con el ejemplar, no hay disponibles o el ISBN es erroneo!")
            }
        } else
        {
            print("Hay un problema con el socio, no lo encuentro")
        }
    }
    public func getSocioByID(id: Int)-> Socio?
    {
        for i in socios
        {
            if i.getID() == id
            {
                return i
            }
        }
        return nil
    }
    public func getEjemplarByISBN(isbn: Int)->Ejemplar? {
        for l in publicaciones {
            if l.getISBN() == isbn && l.tieneEjemplarDisponible() {
                return l.prestarEjemplar()
            }
        }
        return nil
    }
    public func prestar(listaISBN: [Int], idSocio: Int)
    {

        if let socio = getSocioByID(id:idSocio)
        {
            for i in listaISBN
            {
                if let ejemplar = getEjemplarByISBN(isbn: i)
                {
                    if socio.tieneCupoDisponible() {
                        socio.tomarPrestado(unEjemplar: ejemplar)
                        let ejemplarPrestado = ejemplar.getPublicacion().prestarEjemplar()
                        let prestamo = Prestamo(socio: socio, ejemplar:ejemplarPrestado)
                        print("Se presto el ejemplar \(ejemplarPrestado) al socio \(socio)")
                        print("el prestamo fue \(prestamo)")
                    }
                }
                else {
                    print ("El ejemplar \(i) no esta disponible")
                }
            }
        }
        else {
            print("el Socio \(idSocio) no es valido!")
        }
    }
    public func devolver(listaEjemplares:[Ejemplar], idSocio: Int)-> Void {
        if let socio = getSocioByID(id:idSocio)
        {
            for e in listaEjemplares
            {
                e.getPublicacion().reingresar(unEjemplar:e)
            }
        }
    }
    public func darDeAltaCategoria(categoria: Categoria)
    {
        categorias.append(categoria)
        dicCategorias = [categoria.getCodigo(): []]
    }
    public func existeCategoria(categoria:Categoria)->Bool {
        for c in categorias {
            if c.getCodigo() == categoria.getCodigo() {
                return true
            }
        }
        return false
    }
    public func agregar(unPublicacion: Publicacion, aUnaCategoria: Categoria)->Void {
        if existeCategoria(categoria: aUnaCategoria) {
            var items = dicCategorias[aUnaCategoria.getCodigo()] as! [Publicacion]
            dicCategorias[aUnaCategoria.getCodigo()] = items
        }
    }
    public func listarpublicaciones (deUnaCategoria: Categoria)->[Publicacion]
    {
        var publicaciones = dicCategorias[deUnaCategoria.getCodigo()] as! [Publicacion]
        return publicaciones
    }
    public func informaCategoria(deUnPublicacion: Publicacion)->Categoria?
    {
        for (cat,arraypublicaciones) in dicCategorias
        {
            let c = buscarCategoria(codigo: cat)
            if c != nil
            {
                for l in arraypublicaciones
                {
                    if l.getTitulo() == deUnPublicacion.getTitulo()
                    {
                        return c
                    }
                }
            }
        }
        return nil
    }
    public func buscarCategoria(codigo:Int)->Categoria?{
        for c in categorias {
            if c.getCodigo() == codigo{
                return c
            }
        }
        return nil
    }
    public func imprimirNuevosEjemplares(imprimibles:[Imprimible]){
        for i in imprimibles {
            i.imprimir()
        }
    }
}
