//
//  EmptyShape.swift
//  TicTacToe
//
//  Created by Code Forge on 05.10.2023..
//

import SwiftUI

struct EmptyShape: Shape {
    func path(in rect: CGRect) -> Path {
        return Path()
    }
}
