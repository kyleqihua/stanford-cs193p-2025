//
//  MatchMarkers.swift
//  CodeBreaker
//
//  Created by kyle qihua  on 11/30/25.
//

import SwiftUI

struct MatchMarkers: View {
    var body: some View {
        HStack {
            VStack {
                Circle().fill().opacity(0)
                Circle()
                    .strokeBorder(.primary, lineWidth: 2)
                    .aspectRatio(1, contentMode: .fit)
            }
            VStack {
                Circle()
                Circle()
            }
        }
    }
}

#Preview {
    MatchMarkers()
}
