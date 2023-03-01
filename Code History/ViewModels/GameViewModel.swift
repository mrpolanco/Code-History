//
//  GameViewModel.swift
//  Code History
//
//  Created by Rich Polanco on 2/28/23.
//

import SwiftUI

class GameViewModel: ObservableObject {
    @Published private var game = Game()

    var currentQuestion: Question {
        game.currentQuestion
    }

    var questionProgressText: String {
        "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
    }
}
