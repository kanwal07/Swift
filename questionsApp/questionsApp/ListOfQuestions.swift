//
//  listQuestions.swift
//  questionsApp
//
//  Created by english on 2019-11-22.
//  Copyright © 2019 english. All rights reserved.
//

import Foundation

class ListOfQuestions{
    var list = [Question]()
    
    init(){
        let q1 = Question(questioninit: "Is the sky Blue ?", answerinit: true)
        let q2 = Question(questioninit: "Do you like exams ?", answerinit: false)
        let q3 = Question(questioninit: "Is the grass green ?", answerinit: true)
        let q4 = Question(questioninit: "Is it cold ?", answerinit: true)
        let q5 = Question(questioninit: "Is it really really cold ?", answerinit: true)
        let q6 = Question(questioninit: "Are you sleepy ?", answerinit: true)
        let q7 = Question(questioninit: "Do I love Hao ?", answerinit: true)
        let q8 = Question(questioninit: "1 + 1 = 3 ?", answerinit: false)
        let q9 = Question(questioninit: "Are you stupid ?", answerinit: false)
        let q10 = Question(questioninit: "Is it 2019 ?", answerinit: true)
        let q11 = Question(questioninit: "Is it march ?", answerinit: false)
        let q12 = Question(questioninit: "Are your hair red ?", answerinit: false)
        let q13 = Question(questioninit: "Do you like chocolates ?", answerinit: true)
        let q14 = Question(questioninit: "Do you have a headache ?", answerinit: true)
        let q15 = Question(questioninit: "Do you have friends ?", answerinit: true)
        let q16 = Question(questioninit: "Are you wearing shoes ?", answerinit: true)
        let q17 = Question(questioninit: "Do you live on Mars ?", answerinit: false)
        let q18 = Question(questioninit: "Do you have a name ?", answerinit: true)
        let q19 = Question(questioninit: "Does false means true ?", answerinit: false)
        let q20 = Question(questioninit: "Is this the first question ?", answerinit: false)
        
        
        list.append(q1)
        list.append(q2)
        list.append(q3)
        list.append(q4)
        list.append(q5)
        list.append(q6)
        list.append(q7)
        list.append(q8)
        list.append(q9)
        list.append(q10)
        list.append(q11)
        list.append(q12)
        list.append(q13)
        list.append(q14)
        list.append(q15)
        list.append(q16)
        list.append(q17)
        list.append(q18)
        list.append(q19)
        list.append(q20)
    }
}
