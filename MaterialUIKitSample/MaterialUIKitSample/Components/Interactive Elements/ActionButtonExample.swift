//
//  ActionButtonExample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/07/24.
//

// Docs:
// - https://swift-packages.gitbook.io/materialuikit/components/action-button
// - https://app.gitbook.com/o/eao7UQe2bw3uEidqU7BL/s/HpwjDgYAa64eKF8AGmeE/components/action-button/actionbuttonstyle

import SwiftUI
import MaterialUIKit

struct ActionButtonExample: View {
    var body: some View {
        NavigationContainer {
            Collection(style: .plain) {
                ActionButton("Text", style: .text) {}
                
                ActionButton("Filled", style: .filled) {}
                
                ActionButton("Tonal", style: .tonal) {}
                
                ActionButton("Elvetated", style: .elevated) {}
                
                ActionButton("Outline", style: .outline) {}
                
                ActionButton("Customized Action Button") {}
                    .actionButtonCornerRadius(10)
                    .actionButtonFontStyle(.headline)
                    .actionButtonFontWeight(.heavy)
                
                ActionButton("Tonal Stretched", style: .tonalStretched) {}
                
                ActionButton("Elvetated Stretched", style: .elevatedStretched) {}
                
                ActionButton("Filled Stretched", style: .filledStretched) {}
                
                ActionButton("Cancel", style: .outlineStretched) {}
            }
            
            .navigationContainerTopBar(
                title: "Action Button",
                backButtonHidden: false,
                style: .inline
            )
        }
    }
}

#Preview {
    ActionButtonExample()
}
