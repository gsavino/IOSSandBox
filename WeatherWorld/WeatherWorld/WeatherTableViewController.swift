//
//  WeatherTableViewController.swift
//  WeatherWorld
//
//  Created by Gaston on 25/04/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import UIKit

var cities = [City(name: "Buenos Aires", temperature: 29, weather: Climate.mostlySunny),
              City(name: "Miami", temperature: 35, weather: Climate.raining),
              City(name: "New York", temperature: 22, weather: Climate.sunny),
              City(name: "Rome", temperature: 25, weather: Climate.partiallySunny),
              City(name: "Rio do Janeiro", temperature: 40, weather: Climate.thunderStorm),
              City(name: "Guardiagrele", temperature: 17, weather: Climate.sunny),
              City(name: "Orlando", temperature: 35, weather: Climate.thunderStorm),
              City(name: "Cupertino", temperature: 20, weather: Climate.mostlySunny),
              City(name: "London", temperature: 10, weather: Climate.mostlySunny),
              City(name: "Paris", temperature: 12, weather: Climate.sunny),
              City(name: "Madrid", temperature: 20, weather: Climate.sunny),
              City(name: "Santiago de Chile", temperature: 20, weather: Climate.thunderStorm),
              City(name: "Amsterdam", temperature: 9, weather: Climate.raining),
              City(name: "Naples", temperature: 27, weather: Climate.mostlySunny),
              City(name: "Asuncion", temperature: 27, weather: Climate.thunderStorm),
              City(name: "Lima", temperature: 22, weather: Climate.raining)]



class WeatherTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //tableView.estimatedRowHeight = 300
        //tableView.rowHeight  = UITableViewAutomaticDimension

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
        return cities.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customClimateCell", for: indexPath) as! CustomTableViewCell

        let c = cities[indexPath.row]
        
        cell.climateImg.image = UIImage(named: c.weather.rawValue)
        cell.cityLbl.text = c.name
        cell.tempertureLbl.text = String(c.temperature) + " ºC"
        //cell.customCellView.backgroundColor = UIColor.lightGray
        //cell.textLabel?.text = c.name
        //cell.detailTextLabel?.text = String(c.temperature) + "ºC"
        //cell.imageView?.image = UIImage(named: c.weather.rawValue)

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
