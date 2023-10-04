//
//  ContentView.swift
//  TicTacToe
//
//  Created by Code Forge on 03.10.2023..
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var game = TicTacToeGame()
    
    var body: some View {
        VStack {
            Spacer()
            boardView
            Spacer()
            scoreBoard
        }
        .padding(10)
    }
    
    private var boardView: some View {
        BoardGrid { row, col in
            TicOrToeView(ticOrToe: $game.board[row][col])
                .onTapGesture {
                    game.selectField(row, col)
                }
        }
    }
    
    private var scoreBoard: some View {
        HStack {
            Button("Restart") {
                game.cleanBoard()
            }
        }
        .font(.largeTitle)
    }
}

struct TicOrToeView: View {
    @Binding var ticOrToe: PlayerMark
    
    var body: some View {
        Image(systemName: ticOrToe.rawValue)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding(10)
            .background(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
