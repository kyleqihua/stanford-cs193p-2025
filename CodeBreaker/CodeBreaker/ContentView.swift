//
//  ContentView.swift
//  CodeBreaker
//
//  Created by kyle qihua  on 11/30/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
        Image(systemName: "globe")
            .font(.largeTitle)
        Text("Hello, world!")
            .font(.title)
            .foregroundStyle(.green)
            .background(.red)
            .padding()
        Circle()
    }
        .font(.caption)
        .foregroundStyle(.yellow)
        .padding()
    }

}

#Preview {
    ContentView()
}
