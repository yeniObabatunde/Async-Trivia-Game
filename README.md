# Async-Trivia-Game

A competitive SAT math trivia game built with SwiftUI where players can test their knowledge head-to-head.

### Demo
<div align="leading">
  <img src="https://github.com/user-attachments/assets/ef08b336-913e-4d69-8149-1ff26b22ecc9" alt="gif" width="200">
</div>

### Screenshots
<div style="display: flex; justify-content: space-between;">
 <img src="https://github.com/user-attachments/assets/88532678-34aa-4a40-a5a0-407ea4ea08fe" width="200" alt="Landing Page">
 <img src="https://github.com/user-attachments/assets/7eb83891-0f00-4bbe-b41c-42645f2d87b1" width="200" alt="Game Rules">
  <img src="https://github.com/user-attachments/assets/386c0900-e8cf-4219-b7fc-5bf0c0be5da2" width="200" alt="Success Page">
</div>

## Features

- Two-player turn-based gameplay
- Random SAT math questions with timed responses
- Consecutive win tracking system
- Player score tracking
- Celebration screen for winners

## Game Rules

- Each player answers the same random SAT math question per round
- If both answer correctly, the faster player wins the round
- If both answer incorrectly, the round is a tie
- If one answers correctly and the other incorrectly, the correct player wins
- First player to win 3 rounds **consecutively** wins the game

## Screenshots

<table>
  <tr>
    <td><img src="path/to/welcome-screen.png" alt="Welcome Screen" width="200"/></td>
    <td><img src="path/to/rules-screen.png" alt="Rules Screen" width="200"/></td>
  </tr>
  <tr>
    <td><img src="path/to/gameplay.png" alt="Gameplay" width="200"/></td>
    <td><img src="path/to/winner-screen.png" alt="Winner Screen" width="200"/></td>
  </tr>
</table>

## Implementation Details

The app is structured using MVVM architecture:
- **Model**: SATQuestion
- **Views**: WelcomeView, PlayerEntryView, TriviaGameView, WinnerView
- **ViewModel**: TriviaGameViewModel

Key technical implementations include:
- SwiftUI for UI components
- ObservableObject pattern for state management
- Timer functionality for tracking response times
- Consecutive win tracking logic

## How to Run the Project

1. Clone this repository
2. Open `TriviaGame.xcodeproj` in Xcode
3. Select an iPad simulator or connect an iPad device
4. Build and run the project (⌘+R)

## Future Improvements

- Add more question categories
- Implement difficulty levels
- Add multiplayer functionality
- Create a leaderboard system
