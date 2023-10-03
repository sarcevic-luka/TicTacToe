//
//  ContentView.swift
//  TicTacToe
//
//  Created by Code Forge on 03.10.2023..
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                TicOrToeView()
                TicOrToeView()
                TicOrToeView(ticOrToe: .tac)
            }
            .background(.black)
            HStack {
                Text("Player 1")
                Spacer()
                Text("Player 2")
            }
            .font(.largeTitle)
        }
        .padding()
    }
}

struct TicOrToeView: View {
    var ticOrToe: TicOrToe = .empty
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .opacity(1)
            Image(systemName: ticOrToe.rawValue)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(10)
        }
    }
    
    enum TicOrToe: String {
        case tac = "circle"
        case toe = "xmark"
        case empty = ""
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
