//
//  ContentView.swift
//  CodeBreaker
//
//  Created by kyle qihua  on 11/30/25.
//

import SwiftUI

struct ContentView: View {

    func pegs(colors: Array<Color>) -> some View {
        HStack {
            ForEach(colors.indices, id: \.self) { index in
                RoundedRectangle(cornerRadius: 5)
                    .aspectRatio(1, contentMode: .fit)
                    .foregroundStyle(colors[index])
            }
            MatchMarkers()
        }
    }

    var body: some View {
        VStack {
            pegs(colors: [.red, .green, .green, .yellow])
            pegs(colors: [.blue, .blue, .red, .red])
            pegs(colors: [.red, .yellow, .green, .blue])
        }
        .padding()   
    }
}

#Preview {
    ContentView()
}
