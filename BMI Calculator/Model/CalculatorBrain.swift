//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Illy Sell on 07/06/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
  
  var bmi: BMI? // changing to BMI struct optional
  
  //  count BMI value -> first step then passing into getBMIValue method
  mutating func calculateBMI(height: Float, weight: Float) {
    //    calculate bmi then pass into struct and create new instance
    let bmiValue = weight / pow(height, 2)
    
    if bmiValue < 18.5 {
      bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.3506127596, green: 0.3767278194, blue: 0.9592984319, alpha: 1))
      // 'else if' check lower part of previous statment,
      // that's why (bmiValue > 18.5 && bmiValue < 24.9) makes sence just with 'if'
    } else if bmiValue < 24.9 {
      bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1) )
    } else { // bmiValue >= 24.9
      bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
    }
  }
  
  //  returning BMI as string into CalculateViewController
  func getBMIValue() -> String {
    //    using 'nil coalescing operator' for bmi optional
    let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
      return bmiTo1DecimalPlace
  }
  
  func getAdvice() -> String {
    return bmi?.advice ?? "Go on"
  }
  
  func getColor() -> UIColor {
    return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
  }
   
}
