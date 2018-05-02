//
//  MainTableViewController.swift
//  Places
//
//  Created by Gaston on 29/04/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    var places: [Place] = []

    @IBOutlet weak var pictureViewUI: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        places = [Place(pais:"Grecia", bandera:UIImage(named:"grecia")!, imagen:UIImage(named:"acropolis")!),
        Place(pais:"Italia", bandera:UIImage(named:"italia")!, imagen:UIImage(named:"cateral-milan")!),
        Place(pais:"Alemania", bandera:UIImage(named:"germany")!, imagen:UIImage(named:"brandenburgo")!),
        Place(pais:"Mexico", bandera:UIImage(named:"mexico")!, imagen:UIImage(named:"chichenitza")!),
        Place(pais:"Italia", bandera:UIImage(named:"italia")!, imagen:UIImage(named:"coliseo")!),
        Place(pais:"Brasil", bandera:UIImage(named:"brazil")!, imagen:UIImage(named:"cristo")!),
        Place(pais:"Francia", bandera:UIImage(named:"france")!, imagen:UIImage(named:"eiffel")!),
        Place(pais:"Estados Unidos", bandera:UIImage(named:"USA")!, imagen:UIImage(named:"goldengate")!),
        Place(pais:"Estados Unidos", bandera:UIImage(named:"USA")!, imagen:UIImage(named:"grandcanyon")!),
        Place(pais:"Estados Unidos", bandera:UIImage(named:"USA")!, imagen:UIImage(named:"liberty")!),
        Place(pais:"Estados Unidos", bandera:UIImage(named:"USA")!, imagen:UIImage(named:"lincoln")!),
        Place(pais:"Peru", bandera:UIImage(named:"peru")!, imagen:UIImage(named:"machupichu")!),
        Place(pais:"España", bandera:UIImage(named:"espania")!, imagen:UIImage(named:"sagradafamilia")!),
        Place(pais:"Italia", bandera:UIImage(named:"italia")!, imagen:UIImage(named:"sanpedro")!)]
    

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return places.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCellPlaces", for: indexPath) as! customTableViewCell
        
        cell.placeImg?.image = places[indexPath.row].imagen

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let svc = segue.destination as! DetailViewController
        if let sel = tableView.indexPathForSelectedRow {
            svc.placeInput = places[sel.row]
        }
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
