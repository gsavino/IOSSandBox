//
//  Cartas.swift
//  Timba
//
//  Created by Gaston on 22/04/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import Foundation

public class Carta {
    private var identificador: String
    private var palo: String
    public init(_ id: String, _ palo:String){
        self.identificador = id
        self.palo = palo
    }
    public func getId()->String{
        return identificador
    }
    public func getPalo()->String{
        return palo
    }
}
public class Mazo{
    private var cartas: [Carta]
    private var max:UInt32
    public init(){
        cartas = [Carta("A","Corazon"), Carta("2","Corazon"), Carta("3","Corazon"), Carta("4","Corazon"), Carta("5","Corazon"), Carta("6","Corazon"), Carta("7","Corazon"), Carta("8","Corazon"),Carta("9","Corazon"),Carta("10","Corazon"), Carta("J","Coracon"),Carta("Q","Corazon"), Carta("K","Corazon"),Carta("A","Trebol"), Carta("2","Trebol"), Carta("3","Trebol"), Carta("4","Trebol"), Carta("5","Trebol"), Carta("6","Trebol"), Carta("7","Trebol"), Carta("8","Trebol"),Carta("9","Trebol"),Carta("10","Trebol"), Carta("J","Trebol"),Carta("Q","Trebol"), Carta("K","Trebol"),Carta("A","Espada"), Carta("2","Espada"), Carta("3","Espada"), Carta("4","Espada"), Carta("5","Espada"), Carta("6","Espada"), Carta("7","Espada"), Carta("8","Espada"),Carta("9","Espada"),Carta("10","Espada"), Carta("J","Espada"),Carta("Q","Espada"), Carta("K","Espada"),Carta("A","Diamante"), Carta("2","Diamante"), Carta("3","Diamante"), Carta("4","Diamante"), Carta("5","Diamante"), Carta("6","Diamante"), Carta("7","Diamante"), Carta("8","Diamante"),Carta("9","Diamante"),Carta("10","Diamante"), Carta("J","Diamante"),Carta("Q","Diamanate"), Carta("K","Diamante")]
        max = 54
    }
    private func elijoCarta()->Int{
        max -= 1
        print("el maximo es \(max)")
        
        return Int(arc4random_uniform(max))
    }
    public func extraigoCarta()->Carta{
        let cartaAsacar = elijoCarta()
        let carta = cartas[cartaAsacar]
        print("Carta a sacar es la numero \(cartaAsacar) y saco \(carta)")
        cartas.remove(at: cartaAsacar)
        return carta
    }
}
