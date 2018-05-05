import Foundation

public class Carrera: NotificadorJuego
{
    private var resultado: [Int]
    private var listaInteresados: [ListenerJuego]
    private var cantidad: Int
    public override init () {
        self.resultado = []
        self.listaInteresados = []
        self.cantidad = 5
    }
    public func cargarResultado(nroCaballo :Int)
    {
        resultado.append(nroCaballo)
    }
    public func finalizarCarrera()
    {
        notificar()
    }
}
