//
//  TableViewController.swift
//  Bar
//
//  Created by iOS on 4/5/18.
//  Copyright © 2018 PPIPP. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController,QtyModdifier {

    var products = [Product(name:"Coca Cola", price: 40.0),
                    Product(name:"Pepsi", price: 40.0),
                    Product(name:"Fanta", price: 40.0),
                    Product(name:"Sprite", price: 40.0),
                    Product(name:"Burger", price: 100.0),
                    Product(name:"Cheese Burger", price: 120.0),
                    Product(name:"Cesar Salad", price: 90.0),
                    Product(name:"Hotdog", price: 50.0),
                    Product(name:"Full Burger", price: 150.0),
                    Product(name:"Coffe", price: 40.0),
                    Product(name:"Tea", price: 40.0),
                    Product(name:"Cake", price: 50.0),
                    Product(name:"Chocolate", price: 30.0)]


    func increaseQty() {
        
    }
    
    func decreaseQty() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
        return products.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath)

        if let c = cell as? ProductCellTableViewCell {
            c.setUpProductCell(product: products[indexPath.row], delegate: self)
        }
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
