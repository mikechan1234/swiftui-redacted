//
//  ContentView.swift
//  redacted-example
//
//  Created by Michael Chan on 05/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 10) {
            HeaderView()
            BodyView()
        }
        .padding()
        .redacted(reason: [.placeholder, .privacy])
    }
}

#Preview {
    ContentView()
        .environment(\.redactionReasons, [.placeholder, .privacy])
}
