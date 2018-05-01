//
//  ViewController.swift
//  Banderas
//
//  Created by Gaston on 20/04/2018.
//  Copyright © 2018 Gaston. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var selectedFlag = "algoRaroPaso"
    
    @IBAction func selectArgentina(_ sender: Any)
    {
        selectedFlag = "argentina"
        performSegue(withIdentifier: "LetsShowTheFlag", sender: nil)
    }
    
    @IBAction func selectCroatia(_ sender: Any)
    {
        selectedFlag = "croatia"
        performSegue(withIdentifier: "LetsShowTheFlag", sender: nil)
    }
    
    @IBAction func selectIsland(_ sender: Any)
    {
        selectedFlag = "iceland"
        performSegue(withIdentifier: "LetsShowTheFlag", sender: sender)
    }
    
    @IBAction func selectNigeria(_ sender: Any)
    {
        selectedFlag = "nigeria"
        performSegue(withIdentifier: "LetsShowTheFlag", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        // Get the new view controller using segue.destinationViewController.
        if let segueDest = segue.destination as? MuestroBanderaViewController {
            segueDest.flagToShow = selectedFlag
        }
        // Pass the selected object to the new view controller.
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

