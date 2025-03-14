//
//  WelcomeView.swift
//  TriviaGame
//
//  Created by Sharon Omoyeni Babatunde on 14/03/2025.
//

import SwiftUI

struct WelcomeView: View {
    @Binding var gameStarted: Bool
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Brainblast Trivia!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding()
            
            Button(action: {
                gameStarted = true
            }) {
                Text("Start Game")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                    .frame(width: 200)
                    .background(Color.yellow)
                    .foregroundColor(.black)
                    .cornerRadius(15)
            }
        }
    }
}

#Preview {
    WelcomeView(gameStarted: .constant(false))
}
