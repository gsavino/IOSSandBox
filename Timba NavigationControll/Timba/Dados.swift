//
//  Dados.swift
//  Timba
//
//  Created by Gaston on 22/04/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import Foundation
public class Dado{
    public func tirarDados()->Int{
        let num = arc4random_uniform(6) + 1
        return Int(num)
    }
}
