//
//  ContentView.swift
//  TriviaGame
//
//  Created by Sharon Omoyeni Babatunde on 14/03/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = TriviaGameViewModel()
    @State private var gameStarted = false
    @State private var playersEntered = false

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)

            if gameStarted {
                if viewModel.gameWinner != nil {
                    WinnerView(
                        winnerName: viewModel.gameWinner!,
                        playersEntered: $playersEntered,
                        gameStarted: $gameStarted,
                        viewModel: viewModel
                    )
                } else if playersEntered {
                    TriviaGameView(viewModel: viewModel)
                } else {
                    PlayerEntryView(playersEntered: $playersEntered, viewModel: viewModel)
                }
            } else {
                WelcomeView(gameStarted: $gameStarted)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
