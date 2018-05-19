//
//  PlayList.swift
//  imusic
//
//  Created by Gaston savino on 17/05/2018.
//  Copyright © 2018 Gaston savino. All rights reserved.
//

import Foundation

class PlayList{
    var artist: String
    var title: String
    var songs: [String]
    init (dictionary: [String:AnyObject]){
        self.artist = dictionary["artist"] as? String ?? "Artista indefinido"
        self.title = dictionary["title"] as? String ?? "Titulo indefinido"
        self.songs = dictionary ["songs"] as? [String] ?? []
    }
}
