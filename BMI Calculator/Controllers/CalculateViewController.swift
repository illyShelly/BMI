//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
  
  var bmiValue = "0.0"
  
  @IBOutlet weak var heightLabel: UILabel!
  @IBOutlet weak var weightLabel: UILabel!
  @IBOutlet weak var heightSlider: UISlider!
  @IBOutlet weak var weightSlider: UISlider!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
  
  @IBAction func heightSliderChanged(_ sender: UISlider) {
    print(String(format: "%.2f", sender.value)) // 2f -> 2 decimal places; (round(sender.value*100)/100) X Int(round(sender.value))
    
    let height = String(format: "%.2f", sender.value)
    heightLabel.text = "\(height) m" // String
  }
  
  @IBAction func weightSliderChanged(_ sender: UISlider) {
    print(Int(ceil(sender.value))) // to whole number 101.440926 -> 102, Int(ceil(sender.value)
    
    let weight = String(format: "%.0f", sender.value)
    weightLabel.text = "\(weight) Kg" // String
    
  }
  @IBAction func calculatePressed(_ sender: UIButton) {
    let height = heightSlider.value
    let weight = weightSlider.value
    
    let bmi = weight / pow(height, 2)
    bmiValue = String(format: "%.1f", bmi)
    
    self.performSegue(withIdentifier: "goToResult", sender: self)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "goToResult" {
      let destinationViewController = segue.destination as! ResultViewController
      destinationViewController.bmiValue = bmiValue
    }
  }
  
}

