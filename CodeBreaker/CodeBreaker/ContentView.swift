//
//  ContentView.swift
//  CodeBreaker
//
//  Created by kyle qihua  on 11/30/25.
//

import SwiftUI

struct ContentView: View {
    var game = CodeBreaker()

    func pegs(colors: Array<Color>) -> some View {
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
            pegs(colors: game.pegChoices)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
