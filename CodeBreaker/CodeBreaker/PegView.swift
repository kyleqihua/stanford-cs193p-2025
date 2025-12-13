//
//  PegView.swift
//  CodeBreaker
//
//  Created by kyle qihua  on 12/13/25.
//

import SwiftUI

struct PegView: View {
    // MARK: Data In
    let peg: Peg

    // MARK: - Body
    
    let pegShape = Circle()

    var body: some View {
        pegShape
            .overlay {
                if peg == Code.missingPeg {
                    pegShape
                        .stroke(Color.gray)
                }
            }
            .contentShape(pegShape)
            .aspectRatio(1, contentMode: .fit)
            .foregroundStyle(peg)
    }
}

#Preview {
    PegView(peg: .blue)
        .padding()
}
