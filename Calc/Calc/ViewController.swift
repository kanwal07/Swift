//
//  ViewController.swift
//  Calc
//
//  Created by english on 2019-10-09.
//  Copyright © 2019 english. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numbersInScreen: Double = 0
    var previousNum: Double = 0
    var operation = 0
    var isOperationKeyPress = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
 
    @IBOutlet weak var displayLabel: UILabel!

   
    @IBAction func Number(_ sender: UIButton) {
        if(isOperationKeyPress == true)
        {
            displayLabel.text = String(sender.tag - 1)
            numbersInScreen = Double(displayLabel.text!)!
            isOperationKeyPress = false
        }
        else
        {
            displayLabel.text = displayLabel.text! + String(sender.tag - 1)
            numbersInScreen = Double(displayLabel.text!)!
        }
       
    }
    
    @IBAction func Operation(_ sender: UIButton) {
        if(displayLabel.text != " " && sender.tag != 11 && sender.tag != 18)
        {
            previousNum = Double(displayLabel.text!)!
            
            if(sender.tag == 15)
            {
                displayLabel.text = "/"
            }
            else if(sender.tag == 14)
            {
                displayLabel.text = "*"
            }
            else if(sender.tag == 13)
            {
                displayLabel.text = "-"
            }
            else if(sender.tag == 12)
            {
                displayLabel.text = "+"
            }
            operation = sender.tag
            isOperationKeyPress = true
        }
        else if(sender.tag == 11)
        {
            if(operation == 15)
            {
                displayLabel.text = String(previousNum / numbersInScreen)
            }
            else if(operation == 14)
            {
                displayLabel.text = String(previousNum * numbersInScreen)
            }
            else if(operation == 13)
            {
                displayLabel.text = String(previousNum - numbersInScreen)
            }
            else if(operation == 12)
            {
                displayLabel.text = String(previousNum + numbersInScreen)
            }
        }
        else if(sender.tag == 18)
        {
            displayLabel.text = "0"
            operation = 0
            previousNum = 0
            numbersInScreen = 0
        }
        
    }
    
}

