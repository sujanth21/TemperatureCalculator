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
        self.resignFirstResponder()
        
        if segCtrl.selectedSegmentIndex == 0 {
            let fahrenheit = Double(textField.text!)
            let celsius = (fahrenheit! - 32) / 1.8
            outputLabel.text = String(format: "%.2f Celsius", celsius)
        } else if segCtrl.selectedSegmentIndex == 1 {
            let celsius = Double(textField.text!)
            let fahrenheit = (celsius! * 1.8) + 32
            outputLabel.text = String(format: "%.2f Fahrenheit", fahrenheit)
        }
    }
    
    @IBAction func temperatureToggled(_ sender: Any) {
        
        if segCtrl.selectedSegmentIndex == 0 {
            formatLabel.text = "Enter Fahrenheit"
            textField.text = ""
            outputLabel.text = "0 Celsius"
        } else if segCtrl.selectedSegmentIndex == 1 {
            formatLabel.text = "Enter Celsius"
            textField.text = ""
            outputLabel.text = "0 Fahrenheit"
        }
    }
    
    
}

