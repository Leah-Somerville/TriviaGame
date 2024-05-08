//
//  QuestionView.swift
//  TriviaGame
//
//  Created by Leah Somerville on 5/3/24.
//

import SwiftUI

struct QuestionView: View {
    let questions = [
        "Question 1",
        "Question 2",
        "Question 3",
        "Question 4",
        "Question 5"
    ]
    
    let answers = [
        "Answers 1",
        "Answers 2",
        "Answers 3",
        "Answers 4",
        "Answers 5"
    ]
    
    var question: String
    var answer: String
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
    
}

#Preview {
    QuestionView(question: question, answer: answer)
}
