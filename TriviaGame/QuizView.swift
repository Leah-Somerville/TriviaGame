//
//  QuizView.swift
//  TriviaGame
//
//  Created by Leah Somerville on 5/8/24.
//

import SwiftUI

struct QuizView: View {
    var questions = [
        "Offensive Rookie of the Year, C.J. Stroud, play at which college?",
        "Which college team did Joe Namath play for?",
        "Which school won the first Rose Bowl game?",
        "Which team was never a member of the Southeastern Conference?"
    ]
    
    let answers = [
        "Ohio State",
        "Alabama",
        "Michigan",
        "Texas Christian University"
    ]
    
    @State private var question: String = "Offensive Rookie of the Year, C.J. Stroud, play at which college?"
    @State private var correctAnswer: String = "Ohio State"
    @State private var num = 0
    
    @State private var score = 0
    
    @State private var showAlert = false
    @State private var alertTitle: String = "Correct!"
    
    @State private var showGameOver = false
    @State private var gameOvertTitle: String = "Good Job!"
    @State private var gameOverMessage: String = "Your score was 0/4"
    
    let OSU = Color(red: 0.733, green: 0.01568, blue: 0.1686)
    let alabama = Color(red: 0.6844, green: 0.01568, blue: 0.1725)
    let UMich = Color(red: 0.047, green: 0.1137, blue: 0.2509)
    let TCU = Color(red: 0.2784, green: 0.05882, blue: 0.4392)
    
//    rgba(201,201,201,255)
    
    
    let OSUText = Color(red: 0.6588, green: 0.7019, blue: 0.7215)
    let alabamaText = Color(red: 0.7882, green: 0.7882, blue: 0.7882)
    let UMichText = Color(red: 0.9529, green: 0.7647, blue: 0.0)
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color(red: 0.5, green: 0.5, blue: 0.5),.black], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack{
                Text(question)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
//                    .padding(.top, )
                Spacer()
                
                Button {
                    checkAnswer(answer: "Michigan")
                } label: {
                    Text(answers[2])
                        .frame(maxWidth: .infinity)
                        .frame(maxHeight: 100)
                }
                .buttonStyle(.borderedProminent)
                .tint(UMich)
                .font(.title.weight(.bold))
                .foregroundColor(UMichText)
                .padding()
                
                Button {
                    checkAnswer(answer: "Ohio State")
                } label: {
                    Text(answers[0])
                        .frame(maxWidth: .infinity)
                        .frame(maxHeight: 100)
                }
                .buttonStyle(.borderedProminent)
                .tint(OSU)
                .font(.title.weight(.bold))
                .foregroundColor(OSUText)
                .padding()
                
                Button {
                    checkAnswer(answer: "Texas Christian University")
                } label: {
                    Text(answers[3])
                        .frame(maxWidth: .infinity)
                        .frame(maxHeight: 100)
                }
                .buttonStyle(.borderedProminent)
                .tint(TCU)
                .font(.title.weight(.bold))
                .padding()
                
                Button {
                    checkAnswer(answer: "Alabama")
                } label: {
                    Text(answers[1])
                        .frame(maxWidth: .infinity)
                        .frame(maxHeight: 100)
                }
                .buttonStyle(.borderedProminent)
                .tint(alabama)
                .font(.title.weight(.bold))
                .foregroundColor(alabamaText)
                .padding()
                
                
                Text("Score: \(score)")
                    .font(.title)
                    .foregroundColor(.white)
            }
        }
        .alert(alertTitle, isPresented: $showAlert) {
            Button("OK", action: newQuestion)
        }
        .alert(gameOvertTitle ,isPresented: $showGameOver) { } message: {
            Text(gameOverMessage)
        }
//        .padding()
    }
    
    func newQuestion() {
        if num != 3 {
            num += 1
        } else {
            gameOverMessage = "Your score was \(score) out of 4"
            showGameOver = true
        }
        question = questions[num]
        correctAnswer = answers[num]
    }
    
    func checkAnswer(answer: String) {
        if correctAnswer == answer {
            score += 1
            alertTitle = "Correct!"
        } else {
            alertTitle = "Wrong!"
        }
        showAlert = true
    }
}

#Preview {
    QuizView()
}
