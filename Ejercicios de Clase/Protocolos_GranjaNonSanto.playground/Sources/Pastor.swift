import Foundation

public class Pastor
{
    public init ()
    {
        
    }
    public func ponerAPastorear (animales: [Animal])
    {
        for animal in animales
        {
            if let a = animal as? Pastoreable
            {
                a.pastorear()
            }
        }
    }
}
