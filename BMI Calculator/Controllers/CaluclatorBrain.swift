//
//  CaluclatorBrain.swift
//  BMI Calculator
//
//  Created by francisco amuchastegui on 23/09/2023.
//

import UIKit

struct CalculatorBrain {
    
    var bmi : BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        let color = (bajoPeso: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), saludable: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), sobrePeso: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Tene que comer mas rey", color: color.bajoPeso )
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Estas joya", color: color.saludable)
        } else {
            bmi = BMI(value: bmiValue, advice: "Tenes que dejar de comer tantas boludeces", color: color.sobrePeso)
        }
        
       
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
    }
}
