//
//  BodyView.swift
//  redacted-example
//
//  Created by Michael Chan on 05/10/2023.
//

import SwiftUI

struct BodyView: View {
    @Environment(\.redactionReasons) private var redactedReason
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Lorem Ipsum")
                .font(.headline)
                .unredacted()
            Text("Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...\n\nThere is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...")
            .font(.caption)
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                .font(.body)
                .privacySensitive(redactedReason.contains(.privacy))
        }.redacted(reason: redactedReason)
        
    }
}

#Preview("All redacted", traits: .sizeThatFitsLayout) {
    BodyView()
        .environment(\.redactionReasons, [.placeholder, .privacy])
}

#Preview("Placeholder redacted", traits: .sizeThatFitsLayout) {
    BodyView()
        .environment(\.redactionReasons, .placeholder)
}

#Preview("Privacy redacted", traits: .sizeThatFitsLayout) {
    BodyView()
        .environment(\.redactionReasons, .privacy)
}

#Preview("Non-redacted", traits: .sizeThatFitsLayout) {
    BodyView()
}
