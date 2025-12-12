//
//  CodeBreakerView.swift
//  CodeBreaker
//
//  Created by kyle qihua  on 11/30/25.
//

import SwiftUI

struct CodeBreakerView: View {
    @State var game = CodeBreaker(pegChoices: [.brown, .yellow, .orange, .black])

    var body: some View {
        VStack {
            view(for: game.masterCode)
            ScrollView {
                view(for: game.guess)
                ForEach(game.attempts.indices.reversed(), id: \.self) { index in
                    view(for: game.attempts[index])
                }
            }
        }
        .padding()
    }

    var guessButton: some View {
        Button("Guess") {
            withAnimation {
                game.attemptGuess()
            }
        }
        .font(.system(size: 80))
        .minimumScaleFactor(0.1)
    }

    func view(for code: Code) -> some View {
        HStack {
            ForEach(code.pegs.indices, id: \.self) { index in
                RoundedRectangle(cornerRadius: 10)
                    .aspectRatio(1, contentMode: .fit)
                    .foregroundStyle(code.pegs[index])
                    .overlay {
                        if code.pegs[index] == Code.missingPeg {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray)
                        }
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        if code.kind == .guess {
                            game.changeGuessPeg(at: index)
                        }
                    }
            }
            Color.clear.aspectRatio(1, contentMode: .fit)
                .overlay {
                    if let matches = code.matches {
                        MatchMarkers(matches: matches)
                    } else {
                        if code.kind == .guess {
                            guessButton
                        }
                    }
                }
        }
    }
}

#Preview {
    CodeBreakerView()
}
