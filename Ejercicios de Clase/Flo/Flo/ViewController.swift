//
//  ViewController.swift
//  Flo
//
//  Created by Gaston on 3/20/18.
//  Copyright © 2018 Gaston. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterView: CounterView!
    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        counterLabel.text = String(counterView.counter)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pushButtonPressed(_ button: PushButton)
    {
        if button.isAddButton
        {
            counterView.counter += 1
        }
        else
        {
            if ((counterView.counter-1) >= 0)
            {
                counterView.counter -= 1
            }
        }
        counterLabel.text = String(counterView.counter)
    }
}

