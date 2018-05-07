import Foundation

public class Quini5: NotificadorJuego
{
    private var resultado: [Int]
    private var listaInteresados: [ListenerJuego]
    public override init () {
        self.resultado = []
        self.listaInteresados = []
    }
    public func cargarResultado(nro :Int)
    {
        resultado.append(nro)
    }
    public func finalizarSorteo()
    {
        notificar()
    }
}
