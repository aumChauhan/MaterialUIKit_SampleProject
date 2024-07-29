//
//  SwitchExample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/07/24.
//

// Docs: https://swift-packages.gitbook.io/materialuikit/components/switch

import SwiftUI
import MaterialUIKit

struct SwitchExample: View {
    
    @State private var isSwitchOn = false
    
    var body: some View {
        NavigationContainer {
            Collection {
                Switch("Toggle Switch", isOn: $isSwitchOn)
            }
            
            .navigationContainerTopBar(
                title: "Switch",
                backButtonHidden: false,
                style: .inline
            )
        }
    }
}

#Preview {
    SwitchExample()
}
