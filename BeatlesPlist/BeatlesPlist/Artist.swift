//
//  Artist.swift
//  BeatlesPlist
//
//  Created by Gaston savino on 14/05/2018.
//  Copyright © 2018 Gaston savino. All rights reserved.
//

import Foundation

class Artist{
    var id: Int
    var name:String
    var albums: Int
    var fans: Int
    var hasRadio: Bool
    
    init(id: Int, name: String, albums: Int, fans: Int, hasRadio: Bool){
        self.id = id
        self.name = name
        self.albums = albums
        self.fans = fans
        self.hasRadio = hasRadio
    }
}
