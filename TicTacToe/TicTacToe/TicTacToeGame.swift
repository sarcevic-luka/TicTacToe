//
//  TicTacToeGame.swift
//  TicTacToe
//
//  Created by Code Forge on 04.10.2023..
//

import Foundation
import Combine

class TicTacToeGame: ObservableObject {
    @Published var board: [[PlayerMark]] = Array(repeating: Array(repeating: PlayerMark.empty, count: 3), count: 3)
    
    var currentPlayer: PlayerMark = .cross
    
    func selectField(_ row: Int, _ column: Int) {
        guard board[row][column] == .empty else { return }
        board[row][column] = currentPlayer
        if gameIsOver() {
            cleanBoard()
        } else {
            currentPlayer = currentPlayer == .cross ? .nought : .cross
        }
    }
    
    func cleanBoard() {
        board = Array(repeating: Array(repeating: PlayerMark.empty, count: 3), count: 3)
    }

    private func gameIsOver() -> Bool {
        for i in 0...2 {
            if board[i].allSatisfy({ $0 == currentPlayer }) ||
                (0...2).allSatisfy({ board[$0][i] == currentPlayer }) {
                return true
            }
        }
        
        return (0...2).allSatisfy { board[$0][$0] == currentPlayer } ||
        (0...2).allSatisfy { board[2-$0][$0] == currentPlayer }
    }
}
