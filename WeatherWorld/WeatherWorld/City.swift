//
//  City.swift
//  WeatherWorld
//
//  Created by Gaston on 25/04/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import Foundation

public enum Climate:String  {
    case sunny
    case partiallySunny
    case raining
    case mostlySunny
    case thunderStorm
}

class City{
    var name: String
    var temperature: Int
    var weather: Climate
    init (name: String, temperature: Int, weather: Climate){
        self.name = name
        self.temperature = temperature
        self.weather = weather
    }
}
