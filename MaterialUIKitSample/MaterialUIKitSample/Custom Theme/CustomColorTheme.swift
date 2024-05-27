//
//  CustomColorTheme.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 26/05/24.
//

import SwiftUI
import MaterialUIKit

struct CustomColorTheme: MUIColorThemeProtocol {
    func iconColor() -> Color {
        Color.blue
    }
    
    func background() -> Color {
        Color(uiColor: .systemBackground)
    }
    
    func accent() -> Color {
        Color.blue
    }
    
    func tonal() -> Color {
        Color.blue.opacity(0.5)
    }
    
    func primaryBackground() -> Color {
        Color(uiColor: .systemBackground)
    }
    
    func secondaryBackground() -> Color {
        Color(uiColor: .secondarySystemBackground)
    }
    
    func tertiaryBackground() -> Color {
        Color(uiColor: .tertiarySystemBackground)
    }
    
    func accentTitle() -> Color {
        Color.blue
    }
    
    func primaryTitle() -> Color {
        Color.primary
    }
    
    func secondaryTitle() -> Color {
        Color.secondary
    }
    
    func themeName() -> String {
        "CustomTheme"
    }
}
