//
//  WinnerView.swift
//  TriviaGame
//
//  Created by Sharon Omoyeni Babatunde on 14/03/2025.
//

import SwiftUI

struct WinnerView: View {
    let winnerName: String
    @Binding var playersEntered: Bool
    @Binding var gameStarted: Bool
    @ObservedObject var viewModel: TriviaGameViewModel
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 30) {
                Text("🏆 WINNER! 🏆")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(.yellow)
                    .shadow(color: .black.opacity(0.5), radius: 3, x: 2, y: 2)
                
                Text(winnerName)
                    .font(.system(size: 48, weight: .bold))
                    .foregroundColor(.white)
                    .shadow(color: .black.opacity(0.5), radius: 3, x: 2, y: 2)
                    .padding()
                
                Text("has won 3 rounds in a row!")
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding(.bottom, 20)
                
                Text("Final Score")
                    .font(.title3)
                    .foregroundColor(.white)
                
                HStack(spacing: 50) {
                    VStack {
                        Text(viewModel.player1Name)
                            .font(.headline)
                            .foregroundColor(.white)
                        Text("\(viewModel.playerScores[viewModel.player1Name, default: 0])")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue.opacity(0.5))
                            .cornerRadius(10)
                    }
                    
                    VStack {
                        Text(viewModel.player2Name)
                            .font(.headline)
                            .foregroundColor(.white)
                        Text("\(viewModel.playerScores[viewModel.player2Name, default: 0])")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue.opacity(0.5))
                            .cornerRadius(10)
                    }
                }
                .padding()
                
                Button(action: {
                    // Reset the game
                    viewModel.resetGame()
                    playersEntered = false
                }) {
                    Text("Play Again")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                        .frame(minWidth: 200)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .shadow(radius: 3)
                }
                .padding()
            }
            .padding()
            .background(Color.black.opacity(0.3))
            .cornerRadius(20)
            .padding()
        }
    }
}
