//
//  CodeBreakerView.swift
//  CodeBreaker
//
//  Created by kyle qihua  on 11/30/25.
//

import SwiftUI

struct CodeBreakerView: View {
    var game = CodeBreaker()

    func pegChoices(colors: Array<Color>) -> some View {
        HStack {
            ForEach(colors.indices, id: \.self) { index in
                RoundedRectangle(cornerRadius: 5)
                    .aspectRatio(1, contentMode: .fit)
                    .foregroundStyle(colors[index])
            }
            MatchMarkers(matches: [.exact, .inexact, .nomatch, .exact])
        }
    }

    var body: some View {
        VStack {
            pegChoices(colors: game.pegChoices)
        }
        .padding()
    }
}

#Preview {
    CodeBreakerView()
}
