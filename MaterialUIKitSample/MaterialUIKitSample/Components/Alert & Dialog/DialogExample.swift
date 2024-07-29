//
//  DialogExample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/07/24.
//

// Docs: https://swift-packages.gitbook.io/materialuikit/components/dialog

import SwiftUI
import MaterialUIKit

struct DialogExample: View {
    
    @State private var showSimpleDialog = false
    @State private var showPrimaryActionDialog = false
    @State private var showFullDialog = false
    
    var body: some View {
        NavigationContainer {
            Collection {
                Switch("Show Simple Dialog", isOn: $showSimpleDialog)
                
                Switch("Show Dialog with Primary Action", isOn: $showPrimaryActionDialog)
                
                Switch("Show Full Dialog", isOn: $showFullDialog)
            }
            
            .navigationContainerTopBar(
                title: "Dialog Alert",
                backButtonHidden: false,
                style: .inline
            )
        }
        .dialog(
            isPresented: $showSimpleDialog,
            titleKey: "Simple Dialog",
            message: "This is a simple dialog with a title and message."
        )
        
        .dialog(
            isPresented: $showPrimaryActionDialog,
            titleKey: "Primary Action Dialog",
            message: "This dialog includes a primary action button.",
            primaryActionKey: "OK",
            primaryAction: {
                Void()
            }
        )
        
        .dialog(
            isPresented: $showFullDialog,
            titleKey: "Full Dialog",
            message: "This dialog includes both primary and secondary action buttons.",
            primaryActionKey: "Confirm",
            primaryAction: {
                Void()
            },
            secondaryActionKey: "Cancel",
            secondaryAction: {
                Void()
            }
        )
    }
}

#Preview {
    DialogExample()
}
