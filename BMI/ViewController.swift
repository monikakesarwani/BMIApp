//
//  ViewController.swift
//  BMI
//
//  Created by Anil on 9/3/19.
//  Copyright © 2019 kesarwani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // make a connection of all label, text and button with viewController
    
    @IBOutlet weak var heightInFeetTxt: UITextField!
    
    
    @IBOutlet weak var heightInInchesTxt: UITextField!
    
    @IBOutlet weak var weightInPoundTxt: UITextField!
    
    @IBOutlet weak var displayBMILbl: UILabel!
    
    
    
    // function for calculating BMI and return answere in string
    
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

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        //hidding  label when loading view first time
        displayBMILbl.isHidden = true
    }


    
    @IBAction func goButton(_ sender: UIButton) {
        
        
        
        
        displayBMILbl.isHidden = false
        
        
        // set value of all label and textfeild
        
        let heightInFeet = Double(heightInFeetTxt.text!)!
       // print(heightInFeet!)
        let heightInInches = Double(heightInInchesTxt.text!)!
        //print(heightInInches!)
        
        let weightInPound = Double(weightInPoundTxt.text!)!
       // print(weightInPound!)
      
        
       
        
        // calling function and passing the all created constants at parameters places
      
        let bmiResult  = bmiCalcImperialUnits(weightInPounds: weightInPound, heightInFeet: heightInFeet, remainderInches: heightInInches)

        displayBMILbl.text! = String(bmiResult)
        //print(bmi)
        
        
        
           
    }

        
    
   

    }
    


