//
//  MainTableViewController.swift
//  Places
//
//  Created by Gaston on 29/04/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    var places: [UIImage] = []

    @IBOutlet weak var pictureViewUI: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        places = [UIImage(named:"acropolis")!,
                  UIImage(named:"alhambra")!,
                  UIImage(named:"angkorwat")!,
                  UIImage(named:"bazar")!,
                  UIImage(named:"bigben")!,
                  UIImage(named:"brandenburgo")!,
                  UIImage(named:"cateral-milan")!,
                  UIImage(named:"chichenitza")!,
                  UIImage(named:"coliseo")!,
                  UIImage(named:"cristo")!,
                  UIImage(named:"eiffel")!,
                  UIImage(named:"goldengate")!,
                  UIImage(named:"grandcanyon")!,
                  UIImage(named:"greatwall")!,
                  UIImage(named:"liberty")!,
                  UIImage(named:"lincoln")!,
                  UIImage(named:"luxor")!,
                  UIImage(named:"machupichu")!,
                  UIImage(named:"niagara")!,
                  UIImage(named:"notredame")!,
                  UIImage(named:"opera")!,
                  UIImage(named:"petra")!,
                  UIImage(named:"piramides")!,
                  UIImage(named:"redsquare")!,
                  UIImage(named:"sagradafamilia")!,
                  UIImage(named:"saintmichel")!,
                  UIImage(named:"sanpedro")!,
                  UIImage(named:"tajmahal")!,
                  UIImage(named:"timessquare")!,
                  UIImage(named:"yamaa-el-fna")!
        ]

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
        
// cell.climateImg.image = UIImage(named: c.weather.rawValue)
        cell.placeImg?.image = places[indexPath.row]

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
