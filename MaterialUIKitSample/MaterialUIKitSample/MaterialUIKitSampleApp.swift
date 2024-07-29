//
//  MaterialUIKitSampleApp.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 26/05/24.
//

// Docs: https://swift-packages.gitbook.io/materialuikit/essentials/configuring-and-personalizing

import SwiftUI
import MaterialUIKit

@main
struct MaterialUIKitSampleApp: App {
    
    init() {
        // Configuring an Individual Properties
        MaterialUIKit.configuration.animationType = .bouncy(duration: 0.5)
        MaterialUIKit.configuration.borderWidth = 1.0
        MaterialUIKit.configuration.hapticFeedbackIntensity = 0.5
        
        // Create an Instance of the `MUIKitConfiguration`
        let customConfiguration = MUIKitConfiguration()
        
        // Applying a Custom Configuration
        MaterialUIKit.configuration = customConfiguration
    }
    
    var body: some Scene {
        WindowGroup {
            RootContainer()
        }
    }
}
