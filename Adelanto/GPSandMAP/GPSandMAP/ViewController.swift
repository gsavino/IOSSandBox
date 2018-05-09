//
//  ViewController.swift
//  GPSandMAP
//
//  Created by Andres Ciaño on 12/6/17.
//  Copyright © 2017 Digital House. All rights reserved.
//

import UIKit
import CoreLocation

//  IMPORTANTE
//  info.plist  NSLocationAlwaysAndWhenInUseUsageDescription
//  info.plist  NSLocationWhenInUseUsageDescription

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var label: UILabel!

    private var clManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        clManager.delegate = self
    }

    private func manageStatus() {
        let status = CLLocationManager.authorizationStatus()

        if status == .authorizedAlways {
            showAlert("AUTHORIZATION", "ALWAYS")
            start()

        } else if status == .authorizedWhenInUse {
            showAlert("AUTHORIZATION", "WHEN IN USE")
            start()

        } else if status == .denied {
            showAlert("AUTHORIZATION", "WHEN IN USE")

        } else if status == .restricted {
            showAlert("AUTHORIZATION", "RESTRICTED")

        } else if status == .denied {
            showAlert("AUTHORIZATION", "DENIED")
            
        } else {
            clManager.requestAlwaysAuthorization()
        }
    }

    private func start() {
        clManager.startUpdatingLocation()
    }

    private func stop() {
        clManager.stopUpdatingLocation()
    }

    private func showAlert(_ title: String? = nil, _ message: String? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }


    // MARK: - CLLocationManagerDelegate

    public func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        manageStatus()
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.first {
            let lat = location.coordinate.latitude
            let lon = location.coordinate.longitude
            label.text = "LATITUD\n\(lat)\n\n\nLONGITUD\n\(lon)"
        }
    }

}

