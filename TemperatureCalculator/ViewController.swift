//
//  ViewController.swift
//  TemperatureCalculator
//
//  Created by Sujanth Sebamalaithasan on 20/8/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var formatLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var imageField: UIImageView!
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var segCtrl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func temperatureEntered(_ sender: Any) {
    }
    
    @IBAction func temperatureToggled(_ sender: Any) {
    }
    
    
}

