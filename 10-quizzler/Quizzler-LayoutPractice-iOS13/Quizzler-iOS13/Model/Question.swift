//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Peyton Casper on 4/20/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let correctAnswer: String
    let answers: [String]
    
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        self.correctAnswer = correctAnswer
        answers = a
    }
}
