//
//  DetallClubTableViewController.swift
//  FootballClub
//
//  Created by iOS on 9/5/18.
//  Copyright © 2018 PPIPP. All rights reserved.
//
import UIKit

protocol ClubUpdatable {
    func updateClub(c: Club)
}

class DetallClubTableViewController: UITableViewController, PlayerInserter {
    
    func didSavePlayer(player: Player, position: Int) {
        
        players[position].append(player)
        if let c = club {
            switch position {
            case 0:
                c.goalKeepers.append(player)
            case 1:
                c.defenders.append(player)
            case 2:
                c.midFielders.append(player)
            default:
                c.forwards.append(player)
            }
        }
        tableView.reloadData()
    }
    var listenerPpal: ClubUpdatable?
    var club: Club?
    var players: [[Player]] = []
    var position = ""
    func setup (club: Club){
        self.club = club
        players.append(club.goalKeepers)
        players.append(club.defenders)
        players.append(club.midFielders)
        players.append(club.forwards)
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        if let l = listenerPpal, let c = club {
            l.updateClub(c: c)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        if let n = club?.name, let c = club?.country {
            self.title = "\(n) (\(c))"
        }
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
        
        return players.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return players[section].count
    }

    fileprivate func getPosition(_ section: Int)->String {
        switch section {
        case 0:
            position = "GoalKeeper"
        case 1:
            position = "Defenders"
        case 2:
            position = "MidFileders"
        case 3:
            position = "Forwards"
        default:
            position = "DT"
        }
        return position
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

        
        if players[section].count == 0 {return nil}
        return getPosition(section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "clubDetailCell", for: indexPath) as UITableViewCell
        cell.textLabel?.text = players[indexPath.section][indexPath.row].info()
        var esTitular = "Suplente"
        if players[indexPath.section][indexPath.row].isStarter {
            esTitular = "Titular"
        } else { esTitular = "Suplente"}
        cell.detailTextLabel?.text = esTitular

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
        if let svc = segue.destination as? JugadorDetalleViewController,
            let sec = tableView.indexPathForSelectedRow?.section,
            let row = tableView.indexPathForSelectedRow?.row {
            svc.player = players[sec][row]
            svc.position = getPosition(sec)
            svc.club = club
        }
        if let saddplvc = segue.destination as? addPlayerViewController {
            saddplvc.listener = self
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
