//
//  mainTableViewController.swift
//  FootballClub
//
//  Created by iOS on 9/5/18.
//  Copyright © 2018 PPIPP. All rights reserved.
//

import UIKit


class mainTableViewController: UITableViewController, ClubInserter, FavouriteUpdatable {
    
    func updateFavorito(sec: Int, pos: Int) {
        clubsTodos[sec][pos].favourite = !clubsTodos[sec][pos].favourite
        let clubtmp = clubsTodos[sec][pos]
        clubsTodos[sec].remove(at: pos)
        var newSec = 0
        if sec == 0 {
            newSec = 1
        }
        clubsTodos[newSec].append(clubtmp)
// Antigua declaracion cuando los clubes no estaban anidados en favoritos
//        clubs[pos].favourite = !clubs[pos].favourite
//        clubs = clubs.sorted(by: {$0.favourite && !$1.favourite  })
        tableView.reloadData()
    }
    
    var clubs : [Club] = []
    var clubsFavoritos : [Club] = []
    var clubsTodos : [[Club]] = []
    
    func cargoClubs(){
        
        let boca = Club(name: "Boca", country: "Argentina")
        
        boca.goalKeepers.append(Player(name: "Guillermo", lastName: "Sara", age:
            Int(arc4random_uniform(30)) + 20, height: (Double(arc4random_uniform(40)) + 170.0) / 100.0, weight: Int(arc4random_uniform(40)) + 70, isStarter: true))
        boca.defenders.append(Player(name: "Jonathan", lastName: "Silva", age: Int(arc4random_uniform(30)) + 20, height: (Double(arc4random_uniform(40)) + 170.0) / 100.0, weight: Int(arc4random_uniform(40)) + 70, isStarter: true))
        boca.defenders.append(Player(name: "Gino", lastName: "Peruzzi", age: Int(arc4random_uniform(30)) + 20, height: (Double(arc4random_uniform(40)) + 170.0) / 100.0, weight: Int(arc4random_uniform(40)) + 70))
        boca.defenders.append(Player(name: "Lisandro", lastName: "Magallan", age: Int(arc4random_uniform(30)) + 20, height: (Double(arc4random_uniform(40)) + 170.0) / 100.0, weight: Int(arc4random_uniform(40)) + 70))
        boca.midFielders.append(Player(name: "Fernando", lastName: "Gago", age: Int(arc4random_uniform(30)) + 20, height: (Double(arc4random_uniform(40)) + 170.0) / 100.0, weight: Int(arc4random_uniform(40)) + 70))
        boca.midFielders.append(Player(name: "Ricardo", lastName: "Centurion", age: Int(arc4random_uniform(30)) + 20, height: (Double(arc4random_uniform(40)) + 170.0) / 100.0, weight: Int(arc4random_uniform(40)) + 70, isStarter: true))
        boca.forwards.append(Player(name: "Walter", lastName: "Bou", age: Int(arc4random_uniform(30)) + 20, height: (Double(arc4random_uniform(40)) + 170.0) / 100.0, weight: Int(arc4random_uniform(40)) + 70))
        boca.forwards.append(Player(name: "Cristian", lastName: "Pavon", age: Int(arc4random_uniform(30)) + 20, height: (Double(arc4random_uniform(40)) + 170.0) / 100.0, weight: Int(arc4random_uniform(40)) + 70))
        boca.forwards.append(Player(name: "Dario", lastName: "Benedetto", age: Int(arc4random_uniform(30)) + 20, height: (Double(arc4random_uniform(40)) + 170.0) / 100.0, weight: Int(arc4random_uniform(40)) + 70))
        let river = Club(name: "River", country: "Argentina")
        river.defenders.append(Player(name: "Jonatan", lastName: "Maidana", age:
            Int(arc4random_uniform(30)) + 20, height: (Double(arc4random_uniform(40)) + 170.0) / 100.0, weight: Int(arc4random_uniform(40)) + 70))
        river.forwards.append(Player(name: "Rodrigo", lastName: "Mora", age: Int(arc4random_uniform(30)) + 20, height: (Double(arc4random_uniform(40)) + 170.0) / 100.0, weight: Int(arc4random_uniform(40)) + 70))
        let racing = Club(name: "Racing", country: "Argentina")
        let independiente = Club(name: "Independiente", country: "Argentina")
        let sanlorenzo = Club(name: "San Lorenzo", country: "Argentina")
        let velez = Club(name: "Velez", country: "Argentina")
        let barcelona = Club(name: "Barcelona", country: "España")
        barcelona.forwards.append(Player(name: "Lionel", lastName: "Messi", age:
            Int(arc4random_uniform(30)) + 20, height: (Double(arc4random_uniform(40)) + 170.0) / 100.0, weight: Int(arc4random_uniform(40)) + 70))
        let realmadrid = Club(name: "Real Madrid", country: "España")
        realmadrid.forwards.append(Player(name: "Cristiano", lastName: "Ronaldo", age: Int(arc4random_uniform(30)) + 20, height: (Double(arc4random_uniform(40)) + 170.0) / 100.0, weight: Int(arc4random_uniform(40)) + 70))
        let juventus = Club(name: "Juventus", country: "Italia")
        juventus.goalKeepers.append(Player(name: "Gianluigi", lastName: "Buffon", age: Int(arc4random_uniform(30)) + 20, height: (Double(arc4random_uniform(40)) + 170.0) / 100.0, weight: Int(arc4random_uniform(40)) + 70))
        juventus.forwards.append(Player(name: "Gonzalo", lastName: "Higuain", age: Int(arc4random_uniform(30)) + 20, height: (Double(arc4random_uniform(40)) + 170.0) / 100.0, weight: Int(arc4random_uniform(40)) + 70))
        juventus.forwards.append(Player(name: "Paulo", lastName: "Dybala", age: Int(arc4random_uniform(30)) + 20, height: (Double(arc4random_uniform(40)) + 170.0) / 100.0, weight: Int(arc4random_uniform(40)) + 70))
        let milan = Club(name: "Milan", country: "Italia")
        let inter = Club(name: "Inter", country: "Italia")
        let bayern = Club(name: "Bayern", country: "Alemania")
        bayern.midFielders.append(Player(name: "Arjen", lastName: "Robben", age:
            Int(arc4random_uniform(30)) + 20, height: (Double(arc4random_uniform(40)) + 170.0) / 100.0, weight: Int(arc4random_uniform(40)) + 70))
        bayern.midFielders.append(Player(name: "Franck", lastName: "Ribery", age: Int(arc4random_uniform(30)) + 20, height: (Double(arc4random_uniform(40)) + 170.0) / 100.0, weight: Int(arc4random_uniform(40)) + 70))
        clubs.append(boca)
        clubs.append(river)
        clubs.append(racing)
        clubs.append(independiente)
        clubs.append(sanlorenzo)
        clubs.append(velez)
        clubs.append(barcelona)
        clubs.append(realmadrid)
        clubs.append(juventus)
        clubs.append(milan)
        clubs.append(inter)
        clubs.append(bayern)
        clubs = clubs.sorted(by: {$0.favourite && !$1.favourite})
        clubsTodos.append(clubsFavoritos)
        clubsTodos.append(clubs)
    }
    func didSaveClub(c: Club) {
        clubsTodos[1].append(c)
//        clubs.append(c)
//        clubs = clubs.sorted(by: {$0.favourite && !$1.favourite  })
        tableView.reloadData()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        cargoClubs()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return clubsTodos.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
//        var secBool: Bool = true
//        if section == 0 {secBool = true} else {secBool = false}
//        let count = clubs.filter({$0.favourite == secBool})
//        return count.count
        return clubsTodos[section].count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 && clubsTodos[0].count > 0 {
            return "Favourites Clubs!"
        }
        if section == 1 && clubsTodos[1].count > 0 {
            return "Clubs from the Heap"
        }
        return nil
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "clubCell", for: indexPath) as! ClubCellTableViewCell
        let pos = indexPath.row
        let sec = indexPath.section
        cell.setup(position: pos, section:sec ,club: clubsTodos[sec][pos], listenerCellClub: self)
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor(white: 0.85, alpha: 1.0)
        } else {
            cell.backgroundColor = UIColor.white
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
            // Create a new instance of the appropriate class, insert it into the clubs, and add a new row to the table view
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
        if let sVC = segue.destination as? DetallClubTableViewController {
            if let row = tableView.indexPathForSelectedRow?.row, let sec = tableView.indexPathForSelectedRow?.section {
                sVC.setup(club: clubsTodos[sec][row])
            }
            
        }
        if let saddvc = segue.destination as? addClubViewController {
            saddvc.listener = self
        }
    
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
