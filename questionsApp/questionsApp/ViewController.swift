//
//  ViewController.swift
//  questionsApp
//
//  Created by english on 2019-11-22.
//  Copyright © 2019 english. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    let Ques = ListOfQuestions()
    var quesNum = 0
    var correctAns = Bool()
 
    @IBOutlet weak var progressView: UIProgressView!
    
    @IBOutlet weak var quesLbl: UILabel!
    
    @IBOutlet weak var scoreLbl: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLbl.text = "0"
       
            randomQues()
       
    }
    

    
    func finish()
    {
        print ("inside finish")
        let alert = UIAlertController(title: "Finish", message: "Do you want to play again?", preferredStyle: UIAlertController.Style.alert)
        let yes = UIAlertAction(title: "Yes", style: UIAlertAction.Style.default, handler: {(UIAlertAction) in self.reset()})
        let no = UIAlertAction(title: "No", style: UIAlertAction.Style.default, handler: {(UIAlertAction) in
            self.performSegue(withIdentifier: "SecondVC", sender: nil)
        })
        
        alert.addAction(yes)
        alert.addAction(no)
        
        self.present(alert,animated: true,completion: nil)
    }
    
    func randomQues(){
        if quesNum < 20
        {
            if ListOfQuestions().list.count > 0 {
                quesLbl.text = Ques.list[quesNum].Question
                correctAns = Ques.list[quesNum].Answer
            }
        }
        else
        {
            finish()
        }
    }
    func reset(){
        scoreLbl.text = "0"
        quesNum = 0
        randomQues()
    }
    
    @IBAction func yesBtn(_ sender: UIButton) {
      
        if correctAns == true {
            
            
            if(quesNum == 19 )
            {
                finish()
            }
            else
            {
                var score = Int(scoreLbl.text!)
                score = score! + 1
                scoreLbl.text! = String(score!)
                
                let alert = UIAlertController(title: "Result", message: "CORRECT", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                
                
                quesNum = quesNum + 1
                
                randomQues()
            }
        }
        else {
            
            if(quesNum == 19 )
            {
                finish()
            }
            else
            {
                let alert = UIAlertController(title: "Result", message: "INCORRECT", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                
                quesNum = quesNum + 1
                
                randomQues()
            }
            
        }
        progressView.progress = progressView.progress + 0.05
    }
    
    @IBAction func noBtn(_ sender: UIButton) {
        if correctAns == false {
            
            if(quesNum == 19 )
            {
                finish()
            }
            else
            {
                var score = Int(scoreLbl.text!)
                score = score! + 1
                scoreLbl.text! = String(score!)
                
                let alert = UIAlertController(title: "Result", message: "CORRECT", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                
                quesNum = quesNum + 1
                
                randomQues()
            }
            
        }
        else {
            
            
            if(quesNum == 19 )
            {
                finish()
            }
            else
            {
                let alert = UIAlertController(title: "Result", message: "INCORRECT", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                quesNum = quesNum + 1
                
                randomQues()
            }
            
        }
        progressView.progress = progressView.progress + 0.05
    }
}

