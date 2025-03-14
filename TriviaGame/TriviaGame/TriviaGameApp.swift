//
//  TriviaGameApp.swift
//  TriviaGame
//
//  Created by Sharon Omoyeni Babatunde on 14/03/2025.
//

import SwiftUI
import IQKeyboardManagerSwift

@main
struct TriviaGameApp: App {
    
    init() {
        IQKeyboardManager.shared.isEnabled = true
        IQKeyboardManager.shared.resignOnTouchOutside = true
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
