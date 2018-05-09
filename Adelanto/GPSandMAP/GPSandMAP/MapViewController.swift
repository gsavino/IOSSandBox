
//
//  MapViewController.swift
//  GPSandMAP
//
//  Created by Andres Ciaño on 12/6/17.
//  Copyright © 2017 Digital House. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()

        mapView.delegate = self

        if let user = CLLocationManager().location {
            let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            let region = MKCoordinateRegion(center: user.coordinate, span: span)
            mapView.setRegion(region, animated: true)
        }

        setPlace()
    }

    private func setPlace() {
        let dhCoordinate = CLLocationCoordinate2D(latitude: -34.5487581, longitude: -58.4439435)
        let dhPlace = Place(title: "Digital House", subtitle: "Monroe 860", coordinate: dhCoordinate)
        mapView.addAnnotation(dhPlace)
    }

    @IBAction func toggleUser(_ sender: Any) {
        mapView.showsUserLocation = !mapView.showsUserLocation
    }


    // MARK: - MKMapViewDelegate

    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let identifier = "marker"
        var view: MKMarkerAnnotationView
        if let dequeuedView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKMarkerAnnotationView {
            dequeuedView.annotation = annotation
            view = dequeuedView
        } else {
            view = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            view.canShowCallout = true
            view.calloutOffset = CGPoint(x: -5, y: 5)
            view.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
        }
        return view
    }

    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView,
                 calloutAccessoryControlTapped control: UIControl) {
        if let location = view.annotation as? Place {
            let placemark = MKPlacemark(coordinate: location.coordinate)
            let mapItem = MKMapItem(placemark: placemark)
            mapItem.openInMaps(launchOptions: nil)
        }
    }

}
