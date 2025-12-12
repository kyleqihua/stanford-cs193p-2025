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
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .overlay {
                if peg == Code.missingPeg {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray)
                }
            }
            .contentShape(Rectangle())
            .aspectRatio(1, contentMode: .fit)
            .foregroundStyle(peg)
    }
}

#Preview {
    PegView(peg: .blue)
        .padding()
}
