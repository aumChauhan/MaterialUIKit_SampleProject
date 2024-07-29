//
//  SnackbarExample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/07/24.
//

// DOCS: https://swift-packages.gitbook.io/materialuikit/components/snackbar

import SwiftUI
import MaterialUIKit

struct SnackbarExample: View {
    @State private var showSnackbar = false
    @State private var showSnackbarWithButton = false
    
    var body: some View {
        NavigationContainer {
            Collection {
                Switch("Show Default Snackbar", isOn: $showSnackbar)
                
                Switch("Show Snackbar with Button", isOn: $showSnackbarWithButton)
            }
            
            .navigationContainerTopBar(
                title: "Snackbar",
                backButtonHidden: false,
                style: .inline
            )
        }
        .snackbar(isPresented: $showSnackbar, message: "This is a snackbar message.")
        
        .snackbar(
            isPresented: $showSnackbarWithButton,
            message: "Action needed!",
            duration: 10,
            actionButtonKey: "Retry"
        ) {
            Void()
        }
    }
}

#Preview {
    SnackbarExample()
}
