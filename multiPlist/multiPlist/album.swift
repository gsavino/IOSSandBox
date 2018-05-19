//
//  album.swift
//  multiPlist
//
//  Created by Gaston savino on 14/05/2018.
//  Copyright © 2018 Gaston savino. All rights reserved.
//

import Foundation

class Album{
    var title: String
    var id: Int
    init (dictionary: [String: AnyObject]){
        self.title = dictionary["title"] as? String ?? "Sin titulo"
        self.id = dictionary["id"] as? Int ?? 0
    }
}
