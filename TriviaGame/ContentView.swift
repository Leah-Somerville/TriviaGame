//
//  ContentView.swift
//  TriviaGame
//
//  Created by Leah Somerville on 5/3/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            ZStack{
                LinearGradient(colors: [Color(red: 0.5, green: 0.5, blue: 0.5),.black], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack(alignment: .center){
                    Text("Welecome to the College Football Trivia Game")
                        .font(.title.weight(.bold))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .padding(.top, 30)
                    
                    Text("Click the START button when you are ready")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .padding()
                    
                    Spacer()
                    
                    NavigationLink {
                        // destination view to navigation to
                        QuizView()
                    } label: {
                        Text("START")
                            .frame(maxWidth: 150)
                            .frame(maxHeight: 100)
                    }
                    .font(.title)
                    .buttonStyle(.borderedProminent)
                    .tint(.red)
                    .padding()

                }
            }
        }
    }
}


#Preview {
    ContentView()
}
