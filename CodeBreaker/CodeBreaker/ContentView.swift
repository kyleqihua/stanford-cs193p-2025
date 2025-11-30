//
//  ContentView.swift
//  CodeBreaker
//
//  Created by kyle qihua  on 11/30/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 50, content: greetings)
        .padding()
    }
    
    @ViewBuilder
    func greetings() -> some View {
        Image(systemName: "globe")
            .imageScale(.large)
            .foregroundStyle(.tint)
        Text("Hello, world!")
        Circle()
    }
}

#Preview {
    ContentView()
}
