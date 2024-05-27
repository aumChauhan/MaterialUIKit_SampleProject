//
//  MUISnackbarSample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/05/24.
//

import SwiftUI
import MaterialUIKit

// https://github.com/aumChauhan/MaterialUIKit/wiki/MUISnackbar

struct MUISnackbarSample: View {
    
    @State private var showSnackbar = false
    @State private var showSnackbar2 = false
    
    var body: some View {
        MUINavigationView {
            MUIList(listStyle: .plain) {
                MUISwitch("Default Snackbar", isOn: $showSnackbar)
                MUISwitch("With Action Button", isOn: $showSnackbar2)
            }
            .muiNavigationBar(title: "Snackbar", backButtonHidden: false, style: .inline)
        }
        
        // Default Snackbar
        .muiSnackbar(isPresented: $showSnackbar, message: "Default Snackbar...")
        
        // With Custom Action Button & Durtion
        .muiSnackbar(
            isPresented: $showSnackbar2,
            message: "Downloading...",
            duration: 3,
            primaryButtonTitle: "Dismiss",
            primaryAction: {
                // Handle dismiss button tap
            }
        )
    }
}

#Preview {
    MUISnackbarSample()
}
