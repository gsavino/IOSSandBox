//
//  TareasTableViewController.swift
//  ListaTareas
//
//  Created by Gaston on 03/05/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import UIKit

class TareasTableViewController: UITableViewController {
    
    var tasks = [Tarea(titulo:"Comprar Dolares",descripcion:"Comprar la mayor cantidad de dolares posibles"),
            Tarea(titulo:"Compra Euros", descripcion:"Comprar la mayor cantidad de Euros posibles"),
            Tarea(titulo:"Comprar Oro", descripcion:"El comodity tambien puede subir."),
            Tarea(titulo:"Vender Lebac", descripcion:"Tendencia en Baja, mejor no tener ninguna"),
            Tarea(titulo:"Vender acciones Merbal", descripcion:"No van a pasar por un buen momento"),
            Tarea(titulo:"Compra acciones Citi", descripcion:"Con la suba de tasas del tesoro de EEUU sus acciones van a subir"),
            Tarea(titulo:"Comprar acciones BAC", descripcion:"Con la suba de tasass del tesoro de EEUU sus acciones van a subir"),
            Tarea(titulo:"Comprar X", descripcion:"Con las restricciones al acero las acciones de US Steel van a subir"),
            Tarea(titulo:"Comprar AET", descripcion:"Es una accion estable del mercado de salud de USA"),
            Tarea(titulo:"Vender PG", descripcion:"Las acciones de Procter y sus competidores estan estancadas"),
            Tarea(titulo:"Comprar TM", descripcion:"Toyota esta por sacar un nuevo modelo electrico que va a revolucionar el mercado"),
            Tarea(titulo:"Comprar Litum", descripcion:"Todas las acciones de productores de Litio van a subir producto de la futura demanda de autos electricos y robots"),
            Tarea(titulo:"Vender Cobre", descripcion:"Vender, los comodities en general van a caer o seguir estables"),
            Tarea(titulo:"Vender Soja", descripcion:"Con las lluvias el valor de la soja va a volver a caer, vender")]

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
        return tasks.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "rowTarea", for: indexPath) as! RowTareaTableViewCell
        cell.setup(t: tasks[indexPath.row])
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
        
        let segVC = segue.destination as! DetalleTareaViewController
        if let ele = tableView.indexPathForSelectedRow?.row {
            segVC.tarea = tasks[ele]
            segVC.taskUpdateDelegate = self
        }
       
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
}

protocol didTaskChange {
    func updateTask(t: Tarea)
}

extension TareasTableViewController : didTaskChange {
    func updateTask(t: Tarea) {
        if let ele = tableView.indexPathForSelectedRow?.row {
            tasks[ele] = t
            print("Actualizo la tarea que lleta tienen completada \(t.completada)")
            print("El elemento es \(ele)")
            print("la tarea es \(tasks[ele].completada)")
            self.tableView.reloadData()
            self.refreshControl?.endRefreshing()
        }
    }
}
