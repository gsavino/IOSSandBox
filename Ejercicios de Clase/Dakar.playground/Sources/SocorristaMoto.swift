import Foundation

public class SocorristaMoto: Socorredor
{
    public func socorrerCompetidor(patente:String)->Void
    {
        print("Estoy socorriendo una Moto de patente \(patente)")
    }
}
