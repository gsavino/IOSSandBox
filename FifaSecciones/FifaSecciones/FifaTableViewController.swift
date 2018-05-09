//
//  FifaTableViewController.swift
//  FifaSecciones
//
//  Created by iOS on 9/5/18.
//  Copyright © 2018 PPIPP. All rights reserved.
//

import UIKit

class FifaTableViewController: UITableViewController {

    //var teams : [[String:Any]] = [[:]]
    var groups : [Group] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        let groupA = Group(title: "Grupo A")
        groupA.teams = [
    [
        "id": 1,
        "name": "Russia"
    ],
    [
        "id": 2,
        "name": "Saudi Arabia"
    ],
    [
        "id": 3,
        "name": "Egypt"
    ],
    [
        "id": 4,
        "name": "Uruguay"
    ]
]

        let groupB = Group(title: "Grupo B")
groupB.teams = [
    [
        "id": 5,
        "name": "Portugal"
    ],
    [
        "id": 6,
        "name": "Spain"
    ],
    [
        "id": 7,
        "name": "Morocco"
    ],
    [
        "id": 8,
        "name": "Iran"
    ]
]

        let groupC = Group(title: "Grupo C")
groupC.teams = [
    [
        "id": 9,
        "name": "France"
    ],
    [
        "id": 10,
        "name": "Australia"
    ],
    [
        "id": 11,
        "name": "Peru"
    ],
    [
        "id": 12,
        "name": "Denmark"
    ]
]

        let groupD = Group(title: "Grupo D")
groupD.teams = [
    [
        "id": 13,
        "name": "Argentina"
    ],
    [
        "id": 14,
        "name": "Iceland"
    ],
    [
        "id": 15,
        "name": "Croatia"
    ],
    [
        "id": 16,
        "name": "Nigeria"
    ]
]

        let groupE = Group(title: "Grupo E")
groupE.teams = [
    [
        "id": 17,
        "name": "Brazil"
    ],
    [
        "id": 18,
        "name": "Switzerland"
    ],
    [
        "id": 19,
        "name": "Costa Rica"
    ],
    [
        "id": 20,
        "name": "Serbia"
    ]
]

        let groupF = Group(title: "Grupo F")
groupF.teams = [
    [
        "id": 21,
        "name": "Germany"
    ],
    [
        "id": 22,
        "name": "Mexico"
    ],
    [
        "id": 23,
        "name": "Sweden"
    ],
    [
        "id": 24,
        "name": "South Korea"
    ]
]

        let groupG = Group(title: "Grupo G")
groupG.teams = [
    [
        "id": 25,
        "name": "Belgium"
    ],
    [
        "id": 26,
        "name": "Panama"
    ],
    [
        "id": 27,
        "name": "Tunisia"
    ],
    [
        "id": 28,
        "name": "England"
    ]
]

        let groupH = Group(title: "Grupo H")
groupH.teams = [
    [
        "id": 29,
        "name": "Poland"
    ],
    [
        "id": 30,
        "name": "Senegal"
    ],
    [
        "id": 31,
        "name": "Colombia"
    ],
    [
        "id": 32,
        "name": "Japan"
    ]
]

    groups = [groupA, groupB, groupC, groupD, groupE, groupF, groupG, groupH]


    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return groups.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        //let elGrupoQuecorrespondeALaSeccion = groups[section]
        //let laCantidadDePaisesDeEseGrupo = elGrupoQuecorrespondeALaSeccion.teams.count
        //return laCantidadDePaisesDeEseGrupo
        return groups[section].teams.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellFifa", for: indexPath)
        
        //let teamDictionary = teams[indexPath.row]
        //let teamName = teamDictionary["name"] as? String
        //cell.textLabel?.text = "\(teams[indexPath.row]["name"]!)"

        let group = groups[indexPath.section]
        let teamDictionary = group.teams[indexPath.row]
        let teamName = teamDictionary["name"] as? String
        cell.textLabel?.text = teamName
        
        if indexPath.section % 2 == 0 {
            cell.backgroundColor = UIColor.blue
        } else {
            cell.backgroundColor = UIColor.yellow
        }
        
        return cell
    }
    
    // metodo nuevo para congiurar el header de una seccion
    override func  tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    
    let group = groups[section]
       return "Inicio nueva seccion \(group.title)"
}

    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "Fin \(section)"
}

override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

    let v = Bundle.main.loadNibNamed("HeaderView", owner: self, options: nil)?.first as? HeaderView
    let group = groups[section]
    v?.groupHeaderLbl.text = group.title
    return v
    }

override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    let v = Bundle.main.loadNibNamed("HeaderView", owner: self, options: nil)?.first as? HeaderView
   return (v?.frame.size.height)!
}

//func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {//
//<#code#>
//}

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
