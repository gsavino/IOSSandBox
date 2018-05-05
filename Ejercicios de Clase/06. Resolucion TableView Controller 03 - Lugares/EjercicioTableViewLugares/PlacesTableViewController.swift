//
//  PlacesTableViewController.swift
//  EjercicioTableViewLugares
//
//  Created by Andres Ciaño on 4/19/17.
//  Copyright © 2017 Digital House. All rights reserved.
//

import UIKit

class PlacesTableViewController: UITableViewController {

    private var places: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "LUGARES"
        
        places = ["acropolis",
                  "alhambra",
                  "angkorwat",
                  "bazar",
                  "bigben",
                  "brandenburgo",
                  "cateral-milan",
                  "chichenitza",
                  "coliseo",
                  "cristo",
                  "eiffel",
                  "goldengate",
                  "grandcanyon",
                  "greatwall",
                  "liberty",
                  "lincoln",
                  "luxor",
                  "machupichu",
                  "niagara",
                  "notredame",
                  "opera",
                  "petra",
                  "piramides",
                  "redsquare",
                  "sagradafamilia",
                  "saintmichel",
                  "sanpedro",
                  "tajmahal",
                  "timessquare",
                  "yamaa-el-fna"]
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "placeCell", for: indexPath)
        
        if let placesCell = cell as? PlaceTableViewCell {
            let place = places[indexPath.row]
            placesCell.setupWith(place)
        }

        return cell
    }
    
}
