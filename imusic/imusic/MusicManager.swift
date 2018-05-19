//
//  MusicManager.swift
//  imusic
//
//  Created by Gaston savino on 17/05/2018.
//  Copyright © 2018 Gaston savino. All rights reserved.
//

import Foundation

class MusicManager {
    var categories: [Category] = []
    var musicPlist = PlistManager.readDictionary(name: "music")
    init (){
        let tango = musicPlist["Tango"] as? [[String:AnyObject]] ?? []
        let rock = musicPlist["Rock"] as? [[String:AnyObject]] ?? []
        let clasica = musicPlist["Clasica"] as? [[String:AnyObject]] ?? []
        let pop = musicPlist["Pop"] as? [[String:AnyObject]] ?? []
        addCategory(category: Category(name: "Tango", arrayDictionary: tango))
        addCategory(category: Category(name: "Rock",arrayDictionary: rock))
        addCategory(category: Category(name: "Clasica",arrayDictionary: clasica))
        addCategory(category: Category(name: "Pop",arrayDictionary: pop))
    }
    func addCategory(category: Category){
        categories.append(category)
    }
}
