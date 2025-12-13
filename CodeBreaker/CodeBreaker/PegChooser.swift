//
//  PegChooser.swift
//  CodeBreaker
//
//  Created by kyle qihua  on 12/13/25.
//

import SwiftUI

struct PegChooser: View {
    // MARK: Data in
    let choices: [Peg]

    // MARK: Data Out Function
    let onChoose: ((Peg) -> Void)?

    // MARK: -Body
    var body: some View {
        HStack {
            ForEach(choices, id: \.self) { peg in
                Button {
                    onChoose?(peg) 
                } label: {
                    PegView(peg: peg)
                }
            }
        }
    }
}

// #Preview {
//     PegChooser()
// }
