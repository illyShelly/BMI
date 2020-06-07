//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Illy Sell on 07/06/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
  
  var bmi: Float?
  
  //  count BMI value -> first step then passing into getBMIValue method
  mutating func calculateBMI(height: Float, weight: Float) {
     bmi = weight / pow(height, 2)
  }
  
  //  returning BMI as string into CalculateViewController
  func getBMIValue() -> String {
    //    using 'nil coalescing operator' for bmi optional
      let bmiTo1DecimalPlace = String(format: "%.1f", bmi ?? 0.0)
      return bmiTo1DecimalPlace
  }
   
}
