//
//  BoardGrid.swift
//  TicTacToe
//
//  Created by Code Forge on 04.10.2023..
//

import SwiftUI

struct BoardGrid<Content: View>: View {
    let content: (Int, Int) -> Content
    
    init(content: @escaping (Int, Int) -> Content) {
        self.content = content
    }
    
    var body: some View {
        LazyVStack(spacing: 15) {
            ForEach(0..<3) { row in
                HStack(spacing: 15) {
                    ForEach(0..<3) { col in
                        content(row, col)
                    }
                }
            }
        }
        .aspectRatio(1/1, contentMode: .fit)
        .background(.black)
    }
}
