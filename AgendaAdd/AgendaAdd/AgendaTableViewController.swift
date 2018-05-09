//
//  AgendaTableViewController.swift
//  AgendaAdd
//
//  Created by Gaston savino on 08/05/2018.
//  Copyright © 2018 Gaston savino. All rights reserved.
//

import UIKit

class AgendaTableViewController: UITableViewController {
    
    var contacts: [Contact] = []
    
    func loadContacts(){
        contacts = [Contact(name: "Homero", lastName: "Simpson", phone: 4658493, gender: Gender.male, email: "HSimpson@gmail.com"),
        Contact(name: "Maggie", lastName: "Simpson", phone: 4658493, gender: Gender.female, email: "HSimpson@gmail.com"),
        Contact(name: "Lisa", lastName: "Simpson", phone: 4658493, gender: Gender.female, email: "HSimpson@gmail.com"),
        Contact(name: "Bart", lastName: "Simpson", phone: 4658493, gender: Gender.male, email: "HSimpson@gmail.com"),
        Contact(name: "Marge", lastName: "Simpson", phone: 4658493, gender: Gender.female, email: "HSimpson@gmail.com"),
        Contact(name: "Moe", lastName: "Szyslak", phone: 4658493, gender: Gender.male, email: "HSimpson@gmail.com"),
        Contact(name: "Ned", lastName: "Flanders", phone: 4658493, gender: Gender.male, email: "HSimpson@gmail.com"),
        Contact(name: "Nilhouse", lastName: "Van Houten", phone: 4658493, gender: Gender.male, email: "HSimpson@gmail.com"),
        Contact(name: "Apu", lastName: "Nahasapee", phone: 4658493, gender: Gender.male, email: "HSimpson@gmail.com"),
        Contact(name: "Mr", lastName: "Burns", phone: 4658493, gender: Gender.male, email: "HSimpson@gmail.com"),
        Contact(name: "Krusty", lastName: "The Clown", phone: 4658493, gender: Gender.male, email: "HSimpson@gmail.com"),
        Contact(name: "Nelson", lastName: "Muntz", phone: 4658493, gender: Gender.male, email: "HSimpson@gmail.com"),
        Contact(name: "Edna", lastName: "Krabappel", phone: 4658493, gender: Gender.female, email: "HSimpson@gmail.com")]
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadContacts()

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
        return contacts.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath) as! ContactCell

        cell.setUpCell(contact: contacts[indexPath.row])

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
        
        if let detailVC = segue.destination as? DetailViewController , let i = tableView.indexPathForSelectedRow?.row {
            detailVC.setupDetail(c: contacts[i] )
        }
       // if let addVC = segue.destination as? AddViewController {
            
        //}
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
