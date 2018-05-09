//
//  Place.swift
//  GPSandMAP
//
//  Created by Andres Ciaño on 12/6/17.
//  Copyright © 2017 Digital House. All rights reserved.
//

import Foundation
import MapKit

class Place: NSObject, MKAnnotation {

    var coordinate: CLLocationCoordinate2D

    var title: String?

    var subtitle: String?

    init(title: String?, subtitle: String?, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
    }

}
