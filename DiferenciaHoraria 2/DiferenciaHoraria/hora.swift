//
//  hora.swift
//  DiferenciaHoraria
//
//  Created by iOS on 20/4/18.
//  Copyright © 2018 PPIPP. All rights reserved.
//

import Foundation

public class Hora{
    private var hora:String
    private var minutos:String
    private var intHora: Int
    private var intMinutos: Int
    private var banda: Int
    private var pais:String
    public init(hora: String, minutos: String){
        self.hora = hora
        self.minutos = minutos
        self.intHora = Int(hora)!
        self.intMinutos = Int(minutos)!
        self.banda = 0
        self.pais = ""
    }

    public func getHora()->String{
        if pais == "Francia" {
            return ajustoHora(hora:intHora+4)
        }
        if pais == "China" {
            return ajustoHora(hora: intHora+11)
        }
        if pais == "Sudafrica"{
            return ajustoHora(hora: intHora+5)
        }
        return ajustoHora(hora: intHora)
    }
    private func ajustoHora(hora: Int)->String
    {
        if  hora >= 0 && hora <= 12
        {
            print("ajustoHora, no hay transformacion, hora es :\(hora)")
            return String(hora)
        } else
        {
                let Nuevahora =  hora - 12
                banda = cambioBanda()
            print("ajustoHora, hay transformacion, hora es :\(hora) le reste 12 y cambie de banda a \(banda)")
                return String(Nuevahora)
        }
    }
    public func cambioBanda()->Int{
        if banda == 0 {banda = 1}
        else {banda = 0}
        return banda
    }

    public func getMinutos()->String{
        return String(intMinutos)
    }
    public func setHora(hora: String){
        self.hora = hora
        self.intHora = Int(Double(hora)!)
        print("Desde setHora, hora en String:\(self.hora), intHora:\(self.intHora)")
    }
    public func setMinutos(minutos:String){
        self.minutos = minutos
        self.intMinutos = Int(Double(minutos)!)
    }
    public func setBanda(value: Int){
        self.banda = value
    }
    public func getBanda()->Int{
        return banda
    }
    public func getBandaDescription()->String
    {
        if banda == 0 {
            return "AM"
        }
        return "PM"
    }
    public func getImagen()->String{
        if pais == "Francia" {return "Francia1"}
        if pais == "China" {return "China1"}
        return "Sudafrica1"
    }
    public func setPais(pais:String){
        self.pais = pais
    }
    public func getPais()->String{
        return pais
    }

}
