import Foundation

public class SocorristaAuto: Socorredor
{
    public func socorrerCompetidor(patente:String)->Void
    {
        print("Estoy socorriendo un Auto de patente:\(patente)")
    }
}
