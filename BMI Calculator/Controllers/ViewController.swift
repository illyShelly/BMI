//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var heightLabel: UILabel!
  @IBOutlet weak var weightLabel: UILabel!
  
  override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

  @IBAction func heightSliderChanged(_ sender: UISlider) {
    print(String(format: "%.2f", sender.value)) // 2f -> 2 decimal places; (round(sender.value*100)/100)
    
    let height = String(format: "%.2f", sender.value)
    heightLabel.text = "\(height) m" // String
  }
  
  @IBAction func weightSliderChanged(_ sender: UISlider) {
    print(Int(ceil(sender.value))) // to whole number 101.440926 -> 102, Int(ceil(sender.value)
    
    let weight = String(format: "%.0f", sender.value)
    weightLabel.text = "\(weight) Kg" // String
    
  }
  
}

