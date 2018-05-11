//
//  MainCatalogTableViewController.swift
//  AppsCatalogDigitalHouse
//
//  Created by iOS on 11/5/18.
//  Copyright © 2018 PPIPP. All rights reserved.
//

import UIKit

class MainCatalogTableViewController: UITableViewController {

    var apps : [[App]] = []
    var appsEducation : [App] = []
    var appsGame : [App] = []
    var appsBusiness : [App] = []
    var appsFinance : [App] = []
    var appsLifeStyle: [App] = []
    var appsMusic: [App] = []
    
    func initData (){
        appsEducation = [App(name: "Babel", price:3.3 , category: AppCategory.Education,developer: "Gaston" , platform: Platform.AndroidIOS )!,
                        App(name: "Grammarly", price:3.3 , category: AppCategory.Education,developer: "Gaston" , platform: Platform.AndroidIOS )!,
                        App(name: "Board", price:3.3 , category: AppCategory.Education,developer: "Gaston" , platform: Platform.IOS )!,
                        App(name: "Draw", price:3.3 , category: AppCategory.Education,developer: "Gaston" , platform: Platform.Android )!]
        appsGame = [ App(name: "Pac Man", price:3.3 , category: AppCategory.Games,developer: "Gaston" , platform: Platform.AndroidIOS )!,
                        App(name: "Space Invaders", price:3.3 , category: AppCategory.Games,developer: "Gaston" , platform: Platform.AndroidIOS )!,
                        App(name: "Jet Set Willy", price:3.3 , category: AppCategory.Games,developer: "Gaston" , platform: Platform.AndroidIOS )!]
        appsBusiness = [App(name: "Client CRM", price:3.3 , category: AppCategory.Business,developer: "Gaston" , platform: Platform.AndroidIOS )!,
                        App(name: "Agenda", price:3.3 , category: AppCategory.Business,developer: "Gaston" , platform: Platform.AndroidIOS )!,
                        App(name: "PowerPoint", price:3.3 , category: AppCategory.Business,developer: "Gaston" , platform: Platform.AndroidIOS )!]
        appsFinance = [App(name: "NetPresentValue", price:3.3 , category: AppCategory.Finance,developer: "Gaston" , platform: Platform.AndroidIOS )!,
                        App(name: "Account Keeper", price:3.3 , category: AppCategory.Finance,developer: "Gaston" , platform: Platform.AndroidIOS )!,
                        App(name: "ROI", price:3.3 , category: AppCategory.Finance,developer: "Gaston" , platform: Platform.AndroidIOS )!]
        appsLifeStyle = [App(name: "Weight Control", price:3.3 , category: AppCategory.LifeStyle,developer: "Gaston" , platform: Platform.AndroidIOS )!,
                        App(name: "Excercise Alarm", price:3.3 , category: AppCategory.LifeStyle,developer: "Gaston" , platform: Platform.AndroidIOS )!]
        appsMusic = [App(name: "SpotyFoo", price:3.3 , category: AppCategory.Music,developer: "Gaston" , platform: Platform.IOS )!,
                        App(name: "SpotyHack", price:3.3 , category: AppCategory.Music,developer: "Gaston" , platform: Platform.Android )!]
        apps.append(appsEducation)
        apps.append(appsGame)
        apps.append(appsBusiness)
        apps.append(appsFinance)
        apps.append(appsLifeStyle)
        apps.append(appsMusic)
    }
    //name: String, price: Double, category: AppCategory, developer: String, platform: Platform
    
    //Education, Games, Business, Finance, LifeStyle, Music

    override func viewDidLoad() {
        super.viewDidLoad()
        initData()

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
        return apps.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return apps[section].count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "appMainCell", for: indexPath) as! appCellTableViewCell

        cell.setup(app: apps[indexPath.section][indexPath.row])

        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        var titulo = ""
        switch section
        {
        case 0:
            titulo = "Education"
            case 1:
            titulo = "Games"
            case 2:
            titulo = "Business"
            case 3:
            titulo = "Finance"
            case 4:
            titulo = "Life Style"
            default:
            titulo = "Music"
        }
        return titulo
    }
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let v = Bundle.main.loadNibNamed("HeaderView", owner: self, options: nil)
        let firstView = v?.first
        if let customHeaderView = firstView as? HeaderView {
            customHeaderView.setupHeader(sec: section)
            return customHeaderView
        }
        return nil
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
