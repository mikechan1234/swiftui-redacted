//
//  HeaderView.swift
//  redacted-example
//
//  Created by Michael Chan on 05/10/2023.
//

import Foundation
import SwiftUI

struct HeaderView: View {
    @Environment(\.redactionReasons) private var redactedReason
    var body: some View {
        VStack(alignment: .center) {
            Image(systemName: "globe.europe.africa.fill")
                .imageScale(.large)
            Text("Hello World")
                .font(.largeTitle)
        }.redacted(reason: redactedReason)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    HeaderView()
    .environment(\.redactionReasons, .placeholder)
}
