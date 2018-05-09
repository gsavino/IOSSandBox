//
//  ListPhotosTableViewController.swift
//  StorePhotos
//
//  Created by Andres Ciaño on 12/4/17.
//  Copyright © 2017 Digital House. All rights reserved.
//

import UIKit
import FirebaseStorage
import Kingfisher

class ListPhotosTableViewController: UITableViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    private let files = ["croatia.png", "niger.png", "iceland.png", "placeholder.png"]
    private var urls: [URL] = []

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        let storage = Storage.storage()
        let storageRef = storage.reference()
        let worldCupRef = storageRef.child("worldcup")

        for aFile in files {
            let pathReference = worldCupRef.child(aFile)
            pathReference.downloadURL(completion: { (url, error) in
                if let url = url {
                    self.urls.append(url)
                    if self.urls.count == self.files.count {
                        self.tableView.reloadData()
                    }
                }
            })
        }
    }


    let imagePicker = UIImagePickerController()
    @IBAction func pickPhoto(_ sender: Any) {
        imagePicker.delegate = self
        present(imagePicker, animated: true, completion: nil)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {

            // Data in memory
            if let data = UIImageJPEGRepresentation(pickedImage, 0.5) {

                let storage = Storage.storage()
                let storageRef = storage.reference()

                let testRef = storageRef.child("test2.jpeg")

                testRef.putData(data, metadata: nil) { (metadata, error) in
                    print("HOLA")
                }

            }

        }
        imagePicker.dismiss(animated: true, completion: nil)
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        imagePicker.dismiss(animated: true, completion: nil)
    }
    

    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return urls.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "singlePhotoCell", for: indexPath)
        if let customCell = cell as? SinglePhotoTableViewCell {
            let imageUrl = urls[indexPath.row]
            customCell.photoImageView.kf.setImage(with: imageUrl)
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
