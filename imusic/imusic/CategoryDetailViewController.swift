//
//  CategoryDetailViewController.swift
//  imusic
//
//  Created by Gaston savino on 17/05/2018.
//  Copyright © 2018 Gaston savino. All rights reserved.
//

import UIKit

class CategoryDetailViewController: UIViewController,  UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var albumNameLbl: UILabel!
    @IBOutlet weak var artistLbl: UILabel!
    @IBOutlet weak var albumImg: UIImageView!
    @IBOutlet weak var temasTableView: UITableView!
    
    var selectedPlayList : PlayList?
    var songs: [String] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let pList = selectedPlayList {
            albumNameLbl.text = pList.title
            artistLbl.text = pList.artist
            songs = pList.songs
            albumImg.image = UIImage(named: pList.title)
            temasTableView.delegate = self
            temasTableView.dataSource = self
            
        }
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "temaCell", for: indexPath) as! temaCellTableViewCell
        
        cell.temaTitleLbl.text = songs[indexPath.row]

        return cell
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
