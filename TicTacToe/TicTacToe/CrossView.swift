//
//  CrossView.swift
//  TicTacToe
//
//  Created by Code Forge on 05.10.2023..
//

import SwiftUI

struct ShapeDrawingView: View {
    let playerMark: PlayerMark
    
    var body: some View {
        getShape()
            .stroke(style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
    }
    
    private func getShape() -> some Shape {
        switch playerMark {
        case .cross:
            return AnyShape(CrossShape())
        case .nought:
            return AnyShape(Circle().inset(by: 10))
        case .empty:
            return AnyShape(EmptyShape())
        }
    }
}
