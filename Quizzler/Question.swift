//
//  Question.swift
//  Quizzler
//
//  Created by MD RUBEL on 24/5/19.
//  Copyright © 2019 MD RUBEL. All rights reserved.
//

import Foundation

class Question {
    
    let questionText : String
    let answer : Bool
    
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
    
}
