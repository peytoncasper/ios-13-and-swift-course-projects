//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Peyton Casper on 4/21/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            let color = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: color)
        } else if bmiValue > 25 {
            let color = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: color)
        } else {
            let color = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
            bmi = BMI(value: bmiValue, advice: "Fit as a Fiddle!", color: color)
        }
        
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getColor() -> UIColor {
        let defaultColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        return bmi?.color ?? defaultColor
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Eat more vegetables"
    }
}
