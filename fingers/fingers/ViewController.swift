//
//  ViewController.swift
//  fingers
//
//  Created by english on 2019-09-20.
//  Copyright © 2019 english. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBOutlet weak var guessTextBox: UITextField!

    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func guessBtn(_ sender: Any) {
        
        let random = arc4random_uniform(6)
        
        if let num = Int(guessTextBox.text!){
        
            if (num >= 0 && num <= 5)
            {
                if (num == random)
                {
                    answerLabel.text = "You are right!"
                }
                else
                {
                    answerLabel.text = "You are wrong, Try Again."
                }
            }
            else
            {
                answerLabel.text = "Please guess between 0 to 5 only."
            }
        }
        else
        {
            answerLabel.text = "Invalid Input!"
        }
    }
    
}

