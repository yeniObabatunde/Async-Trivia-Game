//
//  GameViewModel.swift
//  TriviaGame
//
//  Created by Sharon Omoyeni Babatunde on 14/03/2025.
//

import SwiftUI

class TriviaGameViewModel: ObservableObject {
    @Published var currentQuestion: SATQuestion?
    @Published var player1Turn = true
    @Published var showResult = false
    @Published var resultMessage = ""
    @Published var gameWinner: String?
    @Published var timerCount = 0
    @Published var isTimerRunning = false
    @Published var currentRound = 1
    @Published var player1Name = ""
    @Published var player2Name = ""

    @Published var playerScores = [String: Int]()
    
    private var player1Time: Int?
    private var player2Time: Int?
    private var player1Correct = false
    private var player2Correct = false

    private var player1ConsecutiveWins = 0
    private var player2ConsecutiveWins = 0
    private let requiredConsecutiveWins = 3
    
    var timer: Timer?
    
    init() {
        playerScores[player1Name] = 0
        playerScores[player2Name] = 0
    }
    
    func setPlayerNames(name1: String, name2: String) {
        player1Name = name1
        player2Name = name2
        playerScores = [player1Name: 0, player2Name: 0]
        resetConsecutiveWins()
    }
    
    func loadNewQuestion() {
        currentQuestion = SATQuestions.all.randomElement()
        resetTimer()
        showResult = false
        startTimer()
    }
    
    func startTimer() {
        stopTimer()
        timerCount = 0
        isTimerRunning = true
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            DispatchQueue.main.async {
                self.timerCount += 1
            }
        }
    }
    
    func stopTimer() {
        timer?.invalidate()
        isTimerRunning = false
    }
    
    func submitAnswer(answer: Int) {
        guard let currentQuestion = currentQuestion else { return }
        
        stopTimer()
        let correct = answer == Int(currentQuestion.answer)
        
        if player1Turn {
            player1Time = timerCount
            player1Correct = correct
        } else {
            player2Time = timerCount
            player2Correct = correct
        }
        
        resultMessage = correct ? "Correct!" : "Oops, wrong answer!"
        showResult = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.showResult = false
            self.evaluateRound()
        }
    }
    
    func evaluateRound() {
        if !player1Turn {
            let roundWinner = determineRoundWinner()
            awardPoints(roundWinner: roundWinner)
            checkForWinner(roundWinner: roundWinner)
            currentRound += 1
        }
        
        player1Turn.toggle()
        
        if player1Turn {
            loadNewQuestion()
        } else {
            startTimer()
        }
    }
    
    private func determineRoundWinner() -> String? {
        guard let p1Time = player1Time, let p2Time = player2Time else {
            print("Error: player1Time or player2Time is nil!")
            return nil
        }
        
        if player1Correct && player2Correct {
            return p1Time < p2Time ? player1Name : (p2Time < p1Time ? player2Name : nil)
        } else if player1Correct {
            return player1Name
        } else if player2Correct {
            return player2Name
        }
        
        return nil
    }
    
    func awardPoints(roundWinner: String?) {
        guard let roundWinner = roundWinner else {
            player1ConsecutiveWins = 0
            player2ConsecutiveWins = 0
            return
        }
        
        playerScores[roundWinner, default: 0] += 1
        
        if roundWinner == player1Name {
            player1ConsecutiveWins += 1
            player2ConsecutiveWins = 0
        } else if roundWinner == player2Name {
            player2ConsecutiveWins += 1
            player1ConsecutiveWins = 0
        }
    }
    
    func checkForWinner(roundWinner: String?) {
        if player1ConsecutiveWins >= requiredConsecutiveWins {
            gameWinner = player1Name
        } else if player2ConsecutiveWins >= requiredConsecutiveWins {
            gameWinner = player2Name
        }
    }
    
    func resetTimer() {
        stopTimer()
        timerCount = 0
    }
    
    func resetConsecutiveWins() {
        player1ConsecutiveWins = 0
        player2ConsecutiveWins = 0
    }
    
    func resetGame() {
        gameWinner = nil
        playerScores = [player1Name: 0, player2Name: 0]
        currentRound = 1
        player1Turn = true
        resetConsecutiveWins()
        resetTimer()
    }
}
