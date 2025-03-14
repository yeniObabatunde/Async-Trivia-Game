//
//  PlayerEntryView.swift
//  TriviaGame
//
//  Created by Sharon Omoyeni Babatunde on 14/03/2025.
//

import SwiftUI

struct PlayerEntryView: View {
    @Binding var playersEntered: Bool
    @ObservedObject var viewModel: TriviaGameViewModel

    var body: some View {
        VStack(spacing: 20) {
            Text("Game Rules")
                .font(.title)
                .bold()
                .foregroundColor(.white)
                .padding()

            VStack(alignment: .leading) {
                Text("• Each player answers the same random SAT math question per round.")
                Text("• If both answer correctly, the faster player wins the round.")
                Text("• If both answer incorrectly, the round is a tie.")
                Text("• If one answers correctly and the other incorrectly, the correct player wins.")
                Text("• First player to win 3 rounds wins the game.")
            }
            .padding()
            .background(Color.white.opacity(0.2))
            .cornerRadius(10)
            .foregroundColor(.white)

            TextField("Player 1 Name", text: $viewModel.player1Name)
                .autocorrectionDisabled()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 200)
                .padding()

            TextField("Player 2 Name", text: $viewModel.player2Name)
                .autocorrectionDisabled()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 200)
                .padding()

            Button(action: {
                if !viewModel.player1Name.isEmpty && !viewModel.player2Name.isEmpty {
                    playersEntered = true
                }
            }) {
                Text("Continue")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding()
                    .frame(width: 150)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(15)
            }
        }
    }
}
