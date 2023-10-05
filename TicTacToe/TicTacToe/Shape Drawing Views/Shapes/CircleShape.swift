//
//  CircleShape.swift
//  TicTacToe
//
//  Created by Code Forge on 05.10.2023..
//

import SwiftUI

struct CircleShape: Shape {
    func path(in rect: CGRect) -> Path {
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = rect.width * 0.4
        
        var p = Path()
        p.addArc(center: center, radius: radius, startAngle: .degrees(0), endAngle: .degrees(360), clockwise: true)
        return p
    }
}
