//
//  ContentView.swift
//  CodeBreaker
//
//  Created by kyle qihua  on 11/30/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 50) {
        Image(systemName: "globe")
            .imageScale(.large)
            .foregroundStyle(.tint)
        Text("Hello, world!")
        Circle()
    }
        .padding()
    }

}

#Preview {
    ContentView()
}
