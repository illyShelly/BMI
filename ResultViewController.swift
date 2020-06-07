//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Illy Sell on 06/06/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
  
  var bmiValue: String?
  
  @IBOutlet weak var bmiLabel: UILabel!
  @IBOutlet weak var adviceLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    bmiLabel.text = bmiValue
    
  }
  
  @IBAction func recalculatePressed(_ sender: UIButton) {
    //    method from uiviewcontroller - come back to first ViewController
    self.dismiss(animated: true, completion: nil)
  }
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destination.
   // Pass the selected object to the new view controller.
   }
   */
  
}
