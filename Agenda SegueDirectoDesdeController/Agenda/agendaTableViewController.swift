//
//  agendaTableViewController.swift
//  Agenda
//
//  Created by iOS on 25/4/18.
//  Copyright © 2018 PPIPP. All rights reserved.
//

import UIKit

class agendaTableViewController: UITableViewController {


var contactos = [Contacto(nombre: "Homero", apellido: "Simpson", fechaNacimiento: "21/12/1980", direccion: "Ocean Drive 444", telefono: "333-3333", email: "hSimpson@hotmail.com"),
Contacto(nombre: "Paul", apellido: "Bouche", fechaNacimiento: "21/12/1980", direccion: "Ocean Drive 444", telefono: "333-3333", email: "hSimpson@hotmail.com"),
Contacto(nombre: "Lisa", apellido: "Simpson", fechaNacimiento: "21/12/1980", direccion: "Ocean Drive 444", telefono: "333-3333", email: "hSimpson@hotmail.com"),
Contacto(nombre: "Bart", apellido: "Simpson", fechaNacimiento: "21/12/1980", direccion: "Ocean Drive 444", telefono: "333-3333", email: "hSimpson@hotmail.com"),
Contacto(nombre: "Maggie", apellido: "Simpson", fechaNacimiento: "21/12/1980", direccion: "Ocean Drive 444", telefono: "333-3333", email: "hSimpson@hotmail.com"),
Contacto(nombre: "Ariel", apellido: "Simpson", fechaNacimiento: "21/12/1980", direccion: "Ocean Drive 444", telefono: "333-3333", email: "hSimpson@hotmail.com"),
Contacto(nombre: "Damian", apellido: "Simpson", fechaNacimiento: "21/12/1980", direccion: "Ocean Drive 444", telefono: "333-3333", email: "hSimpson@hotmail.com"),
Contacto(nombre: "Gaston", apellido: "Simpson", fechaNacimiento: "21/12/1980", direccion: "Ocean Drive 444", telefono: "333-3333", email: "hSimpson@hotmail.com"),
Contacto(nombre: "Luciana", apellido: "Simpson", fechaNacimiento: "21/12/1980", direccion: "Ocean Drive 444", telefono: "333-3333", email: "hSimpson@hotmail.com"),
Contacto(nombre: "Graciela", apellido: "Simpson", fechaNacimiento: "21/12/1980", direccion: "Ocean Drive 444", telefono: "333-3333", email: "hSimpson@hotmail.com"),
Contacto(nombre: "Jose", apellido: "Simpson", fechaNacimiento: "21/12/1980", direccion: "Ocean Drive 444", telefono: "333-3333", email: "hSimpson@hotmail.com"),
Contacto(nombre: "Pepe", apellido: "Simpson", fechaNacimiento: "21/12/1980", direccion: "Ocean Drive 444", telefono: "333-3333", email: "hSimpson@hotmail.com"),
Contacto(nombre: "Lionel", apellido: "Simpson", fechaNacimiento: "21/12/1980", direccion: "Ocean Drive 444", telefono: "333-3333", email: "hSimpson@hotmail.com"),
Contacto(nombre: "Diego", apellido: "Simpson", fechaNacimiento: "21/12/1980", direccion: "Ocean Drive 444", telefono: "333-3333", email: "hSimpson@hotmail.com"),
Contacto(nombre: "Roberto", apellido: "Simpson", fechaNacimiento: "21/12/1980", direccion: "Ocean Drive 444", telefono: "333-3333", email: "hSimpson@hotmail.com"),
Contacto(nombre: "Donatello", apellido: "Simpson", fechaNacimiento: "21/12/1980", direccion: "Ocean Drive 444", telefono: "333-3333", email: "hSimpson@hotmail.com"),
Contacto(nombre: "Leonardo", apellido: "Simpson", fechaNacimiento: "21/12/1980", direccion: "Ocean Drive 444", telefono: "333-3333", email: "hSimpson@hotmail.com"),
Contacto(nombre: "Sofia", apellido: "Simpson", fechaNacimiento: "21/12/1980", direccion: "Ocean Drive 444", telefono: "333-3333", email: "hSimpson@hotmail.com"),
Contacto(nombre: "Macarena", apellido: "Simpson", fechaNacimiento: "21/12/1980", direccion: "Ocean Drive 444", telefono: "333-3333", email: "hSimpson@hotmail.com"),
Contacto(nombre: "Daniel", apellido: "Simpson", fechaNacimiento: "21/12/1980", direccion: "Ocean Drive 444", telefono: "333-3333", email: "hSimpson@hotmail.com"),
Contacto(nombre: "Maria Eugenia", apellido: "Simpson", fechaNacimiento: "21/12/1980", direccion: "Ocean Drive 444", telefono: "333-3333", email: "hSimpson@hotmail.com"),
Contacto(nombre: "Fernanda", apellido: "Simpson", fechaNacimiento: "21/12/1980", direccion: "Ocean Drive 444", telefono: "333-3333", email: "hSimpson@hotmail.com"),
Contacto(nombre: "Fernando", apellido: "Simpson", fechaNacimiento: "21/12/1980", direccion: "Ocean Drive 444", telefono: "333-3333", email: "hSimpson@hotmail.com")]


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
        return contactos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "datosBasicos", for: indexPath)
        
        let c = contactos[indexPath.row]

        cell.textLabel?.text = "\(c.nombre) \(c.apellido)"
        cell.detailTextLabel?.text = "\(c.telefono)"
        cell.imageView?.image = UIImage(named: c.nombre)
        cell.imageView?.contentMode = UIViewContentMode.scaleAspectFill
        cell.imageView?.clipsToBounds = true
        return cell
    }
    
override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

performSegue(withIdentifier: "goToDetail", sender: nil)
//    let sVC = storyboard?.instantiateViewController(withIdentifier: "DetailView") as! DetailViewController
//    
//    sVC.contacto = contactos[indexPath.row]
//    present(sVC, animated: true, completion: nil)

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
        let nVC = segue.destination as! DetailViewController
        if let index = tableView.indexPathForSelectedRow {
            nVC.contacto = contactos[index.row]
        }
     
                // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
