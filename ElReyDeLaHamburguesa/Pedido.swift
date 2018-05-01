//
//  Pedido.swift
//  ElReyDeLaHamburguesa
//
//  Created by Gaston on 22/04/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import Foundation

public class Producto{
    private var descripcion: String
    private var precio: Double
    public init(_ descripcion: String, _ precio:Double){
        self.descripcion = descripcion
        self.precio = precio
    }
    public func getDescripcion()->String{
        return descripcion
    }
    public func getPrecio()->Double{
        return precio
    }
}
public class ListaPrecios{
    private var productos: [Producto]
    public init(productos: [Producto]){
        self.productos = productos
    }
    public func getProducto(descripcion: String)->Producto
    {
        print("Busco \(descripcion)")
        for i in productos{
            if i.getDescripcion() == descripcion {
                return i
            }
        }
        return Producto("ProductoInexistente", 0.0)
    }
}

public class SaleOrder{
    private var burger: Producto?
    private var potato: Producto?
    private var soda: Producto?
    private var total: Double
    public init (){
        burger = nil
        potato = nil
        soda = nil
        total = 0.0
    }
    public func getBurger()->Producto?{
        return burger
    }
    public func setBurger(burguer: Producto){
        self.burger = burguer
    }
    public func getPotato()->Producto?{
        return potato
    }
    public func setPotato(potato: Producto){
        self.potato = potato
    }
    public func setSoda(soda: Producto){
        self.soda = soda
    }
    public func getSoda()->Producto?{
        return soda
    }
    public func getTotal()->Double{
        if let b = burger, let p = potato, let s = soda {
            total = b.getPrecio() + p.getPrecio() + s.getPrecio()
        }
        return total
    }
}
