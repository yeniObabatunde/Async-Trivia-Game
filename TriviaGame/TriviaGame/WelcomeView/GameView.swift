//
//  GameView.swift
//  TriviaGame
//
//  Created by Sharon Omoyeni Babatunde on 14/03/2025.
//

import SwiftUI

struct TriviaGameView: View {
    @ObservedObject var viewModel: TriviaGameViewModel
    @State private var answerInput: String = ""
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text(viewModel.player1Name)
                        .font(.headline)
                    Text("Score: \(viewModel.playerScores[viewModel.player1Name, default: 0])")
                        .font(.subheadline)
                }
                .padding()
                .background(Color.blue.opacity(0.3))
                .cornerRadius(10)
                
                Spacer()
                
                VStack {
                    Text(viewModel.player2Name)
                        .font(.headline)
                    Text("Score: \(viewModel.playerScores[viewModel.player2Name, default: 0])")
                        .font(.subheadline)
                }
                .padding()
                .background(Color.purple.opacity(0.3))
                .cornerRadius(10)
            }
            .padding(.horizontal)
            
            Text("Time: \(viewModel.timerCount) sec")
                .font(.title2)
                .padding()
            
            Text("Round \(viewModel.currentRound)")
                .font(.title)
                .padding()
            
            Text("\(viewModel.player1Turn ? viewModel.player1Name : viewModel.player2Name)'s Turn")
                .font(.headline)
                .padding()
                .background(viewModel.player1Turn ? Color.blue.opacity(0.3) : Color.purple.opacity(0.3))
                .cornerRadius(10)
            
            Text(viewModel.currentQuestion?.question ?? "Loading...")
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.white.opacity(0.2))
                .cornerRadius(10)
                .padding(.horizontal)
            
            TextField("Enter Answer", text: $answerInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 200)
                .padding()
                .keyboardType(.numberPad)
            
            Button(action: {
                viewModel.submitAnswer(answer: Int(answerInput) ?? 0)
                answerInput = ""
            }) {
                Text("Submit Answer")
                    .font(.title2)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            if viewModel.showResult {
                Text(viewModel.resultMessage)
                    .font(.title)
                    .foregroundColor(viewModel.resultMessage.contains("Correct") ? .green : .red)
                    .padding()
            }
        }
        .padding()
        .onAppear {
            viewModel.loadNewQuestion()
        }
    }
}
