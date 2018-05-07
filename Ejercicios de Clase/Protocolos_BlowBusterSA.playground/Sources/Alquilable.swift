import Foundation

public protocol Alquilable {
    func alquilar() -> Void
    func devolver() -> Void
    func alquilado() -> Bool
}
