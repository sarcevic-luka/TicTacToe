//
//  ShapeDrawingView.swift
//  TicTacToe
//
//  Created by Code Forge on 05.10.2023..
//

import SwiftUI

struct ShapeDrawingView: View {
    let playerMark: PlayerMark
    @State private var animateDrawing = false
    
    var body: some View {
        getShape()
            .trim(from: 0, to: animateDrawing ? 1 : 0)
            .stroke(style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
            .onChange(of: playerMark) { newValue in
                resetAnimation()
            }
    }
    
    private func animate() {
        withAnimation(.easeInOut(duration: Double.random(in: 0.8...1.2))) {
            animateDrawing = true
        }
    }
    
    private func resetAnimation() {
        animateDrawing = false
        animate()
    }
    
    private func getShape() -> some Shape {
        switch playerMark {
        case .cross:
            return AnyShape(CrossShape())
        case .nought:
            return AnyShape(CircleShape())
        case .empty:
            return AnyShape(EmptyShape())
        }
    }
}
