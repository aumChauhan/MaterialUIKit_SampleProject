//
//  RadioButtonGroupExample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/07/24.
//

// Docs: https://swift-packages.gitbook.io/materialuikit/components/radio-buttons-group

import SwiftUI
import MaterialUIKit

struct RadioButtonGroupExample: View {
    
    @State private var selectedOption: String = "Option 1"
    private let options: [String] = ["Option 1", "Option 2", "Option 3"]
    
    var body: some View {
        NavigationContainer {
            Collection {
                RadioButtonGroup(options, id: \.self, selection: $selectedOption) { option in
                    Text(option)
                }
            }
            
            .navigationContainerTopBar(
                title: "Radio Buttons Group",
                backButtonHidden: false,
                style: .inline
            )
        }
    }
}

#Preview {
    RadioButtonGroupExample()
}
