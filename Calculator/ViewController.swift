//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2018.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    private var isFinishedTypingNumber: Bool = true
    
    
    private var displayValue: Double{
        get {
            guard let number = Double(displayLabel.text!) else{
                fatalError("Cannot convert display label text to a double")
            }
            return number
            
        }
    }
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        
        
        
        isFinishedTypingNumber = true
        
        
        
        if let  calcMethod = sender.currentTitle{
            if calcMethod == "+/-"{
                displayLabel.text = String(displayValue * -1)
                
            }
            
           else if calcMethod == "AC"{
                displayLabel.text = String(0)
            }
           else if calcMethod == "%"{
                displayLabel.text = String(displayValue * 0.01)
            }
        }
        
        
        
        

        //What should happen when a non-number button is pressed
    
    }

    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        //What should happen when a number is entered into the keypad
        
        
        if let numValue = sender.currentTitle{
            
            if isFinishedTypingNumber == true {
                displayLabel.text = numValue
                isFinishedTypingNumber = false

                
            }else{
                
                if numValue == "."{
                    
              
                    
                let isInt = floor(displayValue) == displayValue
                    
                    if !isInt {
                        return
                    }
                    
                }
                displayLabel.text = displayLabel.text! + numValue
            }
            
        }
    
        
    }

}

