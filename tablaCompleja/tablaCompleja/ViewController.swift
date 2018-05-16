//
//  ViewController.swift
//  tablacompleja
//
//  Created by iOS on 16/5/18.
//  Copyright © 2018 PPIPP. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var secondTableView: UITableView!
    
        override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        secondTableView.delegate = self
        secondTableView.dataSource = self
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == myTableView {
            return 100
        } else {
            return 200
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == myTableView {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = "\(indexPath.row)"
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "secondCell", for: indexPath)
            cell.textLabel?.text = "\(indexPath.row)"
            return cell
        }
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

