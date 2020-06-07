//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Illy Sell on 07/06/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
  
  var bmi: Float = 0.0
  
  //  count BMI value -> first step then passing into getBMIValue method
  mutating func calculateBMI(height: Float, weight: Float) {
     bmi = weight / pow(height, 2)
  }
  
  //  returning BMI as string into CalculateViewController
  func getBMIValue() -> String {
    let bmiTo1DecimalPlace = String(format: "%.1f", bmi)
    return bmiTo1DecimalPlace
  }
}
