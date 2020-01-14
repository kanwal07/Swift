//
//  Questions.swift
//  questionsApp
//
//  Created by english on 2019-11-22.
//  Copyright © 2019 english. All rights reserved.
//

import Foundation

class Questions {
    
    let question :String
    let answer: Bool
    
    init(questioninit: String, answerinit :Bool)
    {
        question = questioninit
        answer = answerinit
    }
    
    func Question()->String
    {
        return (question)
    }
    
    func Answer()->Bool
    {
        return (answer)
    }
}
