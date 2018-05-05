import Foundation

public class Granja {
    
    private var animales: [Animal]
    private var vegetales: [Tomaco]
    private var pastor: Pastor
    
    public init (pastor: Pastor) {
        self.pastor = pastor
        self.vegetales = []
        self.animales = []
    }
    
    public func addAnimal (unAnimal: Animal) {
        animales.append(unAnimal)
    }
    public func addVegetal (unTomaco: Tomaco) {
        vegetales.append(unTomaco)
    }
    public func aPastorear() {
        pastor.ponerAPastorear(animales: animales)
    }
}
