//
//  AppleClassic.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/07/24.
//

// Docs: https://swift-packages.gitbook.io/materialuikit/essentials/defining-a-custom-color-schemes

import SwiftUI
import MaterialUIKit

// Initalizing a Custom Color Scheme
struct AppleClassic: MUIKitColorScheme {
    var accent: Color = Color.blue
    
    var tonal: Color = Color.white.opacity(0.9)
    
    var onError: Color = Color.red
    
    var primaryBackground: Color = Color(uiColor: .systemBackground)
    
    var secondaryBackground: Color = Color(uiColor: .secondarySystemBackground)
    
    var tertiaryBackground: Color = Color(uiColor: .tertiarySystemBackground)
    
    var highlight: Color = Color.blue
    
    var primaryTitle: Color = .primary
    
    var secondaryTitle: Color = .secondary
    
    var separator: Color = Color.gray.opacity(0.4)
    
    var outline: Color = Color.gray.opacity(0.7)
    
    var onDisabled: Color = Color.gray.opacity(0.6)
}
