//
//  Category.swift
//  imusic
//
//  Created by Gaston savino on 17/05/2018.
//  Copyright © 2018 Gaston savino. All rights reserved.
//

import Foundation

class Category {
    var name: String;
    var playLists: [PlayList] = []
    init (name: String, arrayDictionary: [[String:AnyObject]]){
        self.name = name
        for d in arrayDictionary {
            let newPlayList = PlayList(dictionary: d)
            playLists.append(newPlayList)
        }
    }
}

