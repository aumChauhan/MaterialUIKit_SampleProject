//
//  MaterialUIKitSampleApp.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 26/05/24.
//

import SwiftUI
@_exported import MaterialUIKit

@main
struct MaterialUIKitSampleApp: App {
    
    init() {
        // Set up MaterialUIKit with your preferred default color themes.
        MaterialUIKit.tint = MUIColorThemes.purple
        
        // Setting up a custom theme using MaterialUIKit's MUIColorThemeProtocol.
        // MaterialUIKit.tint = CustomColorTheme()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
