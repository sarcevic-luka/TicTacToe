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
            boardView
            HStack {
                Text("Player 1")
                Spacer()
                Text("Player 2")
            }
            .font(.largeTitle)
        }
        .padding(10)
    }
    
    var boardView: some View {
        GeometryReader { geometry in
            let size = min(geometry.size.width, geometry.size.height) / 3 - 2*15
            VStack(spacing: 15) {
                ForEach(0..<3) { row in
                    HStack(spacing: 15) {
                        ForEach(0..<3) { stack in
                            TicOrToeView()
                        }
                    }
                }
            }
            .background(.black)
        }
        .aspectRatio(1/1, contentMode: .fit)
    }
}

struct TicOrToeView: View {
    @State var ticOrToe: TicOrToe = .empty
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.white)
                .opacity(1)
            Image(systemName: ticOrToe.rawValue)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(10)
        }
        .onTapGesture {
            ticOrToe = ticOrToe == .cross ? .nought : .cross
        }
    }
    
    enum TicOrToe: String {
        case cross = "xmark"
        case nought = "circle"
        case empty = ""
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
