//
//  ViewController.swift
//  timerProject
//
//  Created by english on 2019-11-01.
//  Copyright © 2019 english. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    var time = 210
    var alreadyPlaying = false
    @objc func decreaseTime(){
        if time > 0 {
            time -= 1
            timerLabel.text = String (time)
        }
        else {
            timer.invalidate() //to stop the timer
        }
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var timerLabel: UILabel!
    
    @IBAction func pause(_ sender: Any) {
        timer.invalidate()
        alreadyPlaying = false
    }
    @IBAction func play(_ sender: Any) {
        if alreadyPlaying == false {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(decreaseTime), userInfo: nil, repeats: true)
            alreadyPlaying = true
        }
        else {
            let alert = UIAlertController(title: "Error",message:"Timer already running, Do you want to reset ?", preferredStyle : UIAlertController.Style.alert)
            let yes = UIAlertAction(title: "Yes", style: UIAlertAction.Style.default, handler:{(UIAlertAction) in self.yesClicked()})
            let no = UIAlertAction(title: "No", style: UIAlertAction.Style.default, handler:{(UIAlertAction) in print ("No clicked")})
            alert.addAction(yes)
            alert.addAction(no)
            self.present(alert, animated: true, completion: nil)
        }
    }
    @objc func yesClicked(){
        time = 210
        timerLabel.text = String (time)
        timer.invalidate()
        alreadyPlaying = false
    }
    @IBAction func plusTen(_ sender: Any) {
        if time > 0 {
            time += 10
            timerLabel.text = String (time)
        }
        else {
            timer.invalidate() //to stop the timer
        }
    }
    @IBAction func minusTen(_ sender: Any) {
        if time > 0 {
            time -= 10
            timerLabel.text = String (time)
        }
        else {
            timer.invalidate() //to stop the timer
        }
    }
    @IBAction func reset(_ sender: Any) {
            yesClicked()
    }
}

