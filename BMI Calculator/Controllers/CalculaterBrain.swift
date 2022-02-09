//
//  CalculaterBrain.swift
//  BMI Calculator
//
//  Created by Nicolas Dolinkue on 08/02/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit


struct CalculateBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(valur: bmiValue, advice: "under Weight", color: UIColor.blue )
            
        }else if bmiValue < 24.9 {
            bmi = BMI(valur: bmiValue, advice: "normal", color: UIColor.green)
            
        }else{
            bmi = BMI(valur: bmiValue, advice: "over weight", color: UIColor.red)
            
        }
    }
        
    func getAdvice() -> String{
        guard var advice1 = bmi?.advice else { return "error" }
        return advice1
        }
        
    func getColor() -> UIColor{
        var color1 = bmi!.color
            return color1
        }
        
    
    
    
    
    
    func getBMIValue() -> String {
        
        let bmito1decimal = String(format: "%.1f", bmi?.valur ?? 0.0)
        return bmito1decimal

        
    }
    
    
}
