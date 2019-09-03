//
//  Manager.swift
//  BMI
//
//  Created by Anil on 9/3/19.
//  Copyright © 2019 kesarwani. All rights reserved.
//

import Foundation
import UIKit


func bmiCalcImperialUnits(weightInPounds : Double, heightInFeet: Double, remainderInches: Double) -> String
{
    var interpretation = ""
    
    let weightInKg = weightInPounds * 0.45359237
    
    let totalInches = (heightInFeet * 12) + remainderInches
    
    let heightInMeters = totalInches * 0.0254
    
    let bmi = weightInKg / pow(heightInMeters, 2)
    
    let shortenedBmi = String(format: "%.2f", bmi)
    
    
    if bmi > 25{
        
        interpretation = "You are overweight mate."
    }
        //else if myBmi >= 18.5 && myBmi <= 25{
    else if bmi >= 18.5{
        interpretation = "You are healthy mate."
    }
    else
    {
        interpretation = "You are underweight mate."
    }
    
    
    return "Your BMI is \(shortenedBmi) \(interpretation)"
}

var bmi = bmiCalcImperialUnits(weightInPounds: 140, heightInFeet: 5, remainderInches: 11)
