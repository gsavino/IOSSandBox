//
//  Track.swift
//  multiPlist
//
//  Created by Gaston savino on 14/05/2018.
//  Copyright © 2018 Gaston savino. All rights reserved.
//

import Foundation

class Track {
    var title: String
    var duration: Double
    var rank: Int
    var album: Album?
    var artist: String = "Artist not available"
    init (title: String, duration: Double, rank: Int, album: Album){
        self.title = title
        self.duration = duration
        self.rank = rank
        self.album = album
    }
    init (dictionary: [String:AnyObject]){
        self.title = dictionary["title"] as? String ?? "not available"
        self.duration = dictionary["duration"] as? Double ?? 0.0
        self.rank = dictionary["rank"] as? Int ?? 0
        if let album = dictionary["album"] as? [String: AnyObject] {
            self.album = Album(dictionary: album)
        }
    }
}
