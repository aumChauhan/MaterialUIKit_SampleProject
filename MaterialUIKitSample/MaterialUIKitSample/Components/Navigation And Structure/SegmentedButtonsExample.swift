//
//  SegmentedButtonsExample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 28/07/24.
//

// Docs: https://swift-packages.gitbook.io/materialuikit/components/segmented-control

import SwiftUI
import MaterialUIKit

struct SegmentedButtonsExample: View {
    
    @State private var selectedOption: String = "Option 2"
    private let options: [String] = ["Option 1", "Option 2", "Option 3"]
    
    var body: some View {
        NavigationContainer {
            Collection(style: .plain) {
                SegmentedButton(options, id: \.self, selection: $selectedOption) { option in
                    Text(option)
                }
                .padding(.vertical)
            }
            
            .navigationContainerTopBar(
                title: "Segmented Buttons",
                backButtonHidden: false,
                style: .inline
            )
        }
    }
}

#Preview {
    SegmentedButtonsExample()
}
