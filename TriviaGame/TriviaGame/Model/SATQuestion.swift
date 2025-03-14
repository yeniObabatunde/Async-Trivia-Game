//
//  SATQuestion.swift
//  TriviaGame
//
//  Created by Sharon Omoyeni Babatunde on 14/03/2025.
//

import Foundation

struct SATQuestion {
    let id = UUID()
    let question: String
    let answer: Double
    
}

enum SATQuestions {
    static let all: [SATQuestion] = [
        SATQuestion(question: "What is 2 + 2?", answer: 4),
        SATQuestion(question: "Solve for x: 5x = 25", answer: 5),
        SATQuestion(question: "What is 12 / 3?", answer: 4),
        SATQuestion(question: "What is 15 - 7?", answer: 8),
        SATQuestion(question: "Solve for x: x + 9 = 18", answer: 9),
        SATQuestion(question: "What is 3 × 7?", answer: 21),
        SATQuestion(question: "What is the square root of 49?", answer: 7),
        SATQuestion(question: "Solve for x: 2x = 16", answer: 8),
        SATQuestion(question: "What is 81 ÷ 9?", answer: 9),
        SATQuestion(question: "What is 10% of 200?", answer: 20),
        SATQuestion(question: "What is 7²?", answer: 49),
        SATQuestion(question: "Solve for x: x - 4 = 10", answer: 14),
        SATQuestion(question: "What is 100 ÷ 5?", answer: 20),
        SATQuestion(question: "Solve for x: 3x + 2 = 11", answer: 3),
        SATQuestion(question: "What is 5³?", answer: 125),
        SATQuestion(question: "What is the perimeter of a square with side length 6?", answer: 24),
        SATQuestion(question: "Solve for x: 4x = 32", answer: 8),
        SATQuestion(question: "What is the area of a rectangle with length 8 and width 3?", answer: 24),
        SATQuestion(question: "Solve for x: x/2 = 6", answer: 12),
        SATQuestion(question: "What is the sum of the angles in a triangle?", answer: 180),
        SATQuestion(question: "What is 9 × 9?", answer: 81),
        SATQuestion(question: "What is 25% of 80?", answer: 20),
        SATQuestion(question: "Solve for x: 6x = 42", answer: 7),
        SATQuestion(question: "What is 144 ÷ 12?", answer: 12),
        SATQuestion(question: "What is 4! (4 factorial)?", answer: 24),
        SATQuestion(question: "What is the hypotenuse of a right triangle with legs 6 and 8?", answer: 10),
        SATQuestion(question: "What is 2⁵?", answer: 32),
        SATQuestion(question: "Solve for x: 9x - 3 = 24", answer: 3),
        SATQuestion(question: "What is 75 ÷ 15?", answer: 5),
        SATQuestion(question: "What is the least common multiple of 6 and 8?", answer: 24),
        SATQuestion(question: "Solve for x: x² = 49", answer: 7),
        SATQuestion(question: "What is 3⁴?", answer: 81),
        SATQuestion(question: "What is 18% of 50?", answer: 9),
        SATQuestion(question: "Solve for x: 5x + 10 = 35", answer: 5),
        SATQuestion(question: "What is the mean of 4, 6, 8, 10, and 12?", answer: 8),
        SATQuestion(question: "What is the median of 1, 3, 5, 7, 9?", answer: 5),
        SATQuestion(question: "What is the sum of the first 5 positive even numbers?", answer: 30),
        SATQuestion(question: "Solve for x: x/3 + 2 = 6", answer: 12),
        SATQuestion(question: "What is 11²?", answer: 121),
        SATQuestion(question: "What is 40% of 250?", answer: 100),
        SATQuestion(question: "Solve for x: 2x + 5 = 15", answer: 5),
        SATQuestion(question: "What is the circumference of a circle with radius 7? (Use π ≈ 3.14)", answer: 43.96),
        SATQuestion(question: "What is the area of a circle with radius 5? (Use π ≈ 3.14)", answer: 78.5),
        SATQuestion(question: "What is 8 × 7?", answer: 56),
        SATQuestion(question: "What is the probability of rolling a 3 on a six-sided die?", answer: 1.0/6.0),
        SATQuestion(question: "Solve for x: 2(x - 3) = 10", answer: 8),
        SATQuestion(question: "What is 13 × 4?", answer: 52),
        SATQuestion(question: "What is the mode of 2, 4, 4, 5, 6, 6, 6?", answer: 6),
        SATQuestion(question: "Solve for x: x² - 4 = 0", answer: 2)
    ]
}
