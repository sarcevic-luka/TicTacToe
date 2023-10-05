//
//  CrossShape.swift
//  TicTacToe
//
//  Created by Code Forge on 05.10.2023..
//

import SwiftUI

struct CrossShape: Shape {
    func path(in rect: CGRect) -> Path {
        let startCoordinate = rect.width * 0.1
        let endCoordinate = rect.height * 0.9
        
        let firstLineStartPositon = CGPoint(x: startCoordinate, y: startCoordinate)
        let firstLineEndPosition = CGPoint(x: endCoordinate, y: endCoordinate)
        let secondLineStartPosition = CGPoint(x: endCoordinate, y: startCoordinate)
        let secondLineEndPosition = CGPoint(x: startCoordinate, y: endCoordinate)
        
        var p = Path()
        p.move(to: firstLineStartPositon)
        p.addLine(to: firstLineEndPosition)
        p.move(to: secondLineStartPosition)
        p.addLine(to: secondLineEndPosition)
        return p
        
    }
}
