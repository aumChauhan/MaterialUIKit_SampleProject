//
//  CheckboxExample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/07/24.
//

// Docs: https://swift-packages.gitbook.io/materialuikit/components/checkbox

import SwiftUI
import MaterialUIKit

struct CheckboxExample: View {
    
    @State private var isChecked = false
    
    var body: some View {
        NavigationContainer {
            Collection {
                Checkbox("Toggle Checkbox", isOn: $isChecked)
            }
            
            .navigationContainerTopBar(
                title: "Checkbox",
                backButtonHidden: false,
                style: .inline
            )
        }
    }
}

#Preview {
    CheckboxExample()
}
