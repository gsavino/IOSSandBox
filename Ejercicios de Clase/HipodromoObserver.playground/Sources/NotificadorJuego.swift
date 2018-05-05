import Foundation

public class NotificadorJuego
{
    private var resultado: [Int]
    private var listaInteresados: [ListenerJuego]
    public init ()
    {
        resultado = []
        listaInteresados = []
    }
    public func notificar()
    {
        for i in listaInteresados
        {
            i.serNotificado(resultado: resultado)
        }
    }
    public func addInteresado(interesado: ListenerJuego)
    {
        listaInteresados.append(interesado)
    }
}
