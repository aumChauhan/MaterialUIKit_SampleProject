//
//  DropdownMenuExample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/07/24.
//

// Docs:
// - https://swift-packages.gitbook.io/materialuikit/components/dropdown-menu
// - https://swift-packages.gitbook.io/materialuikit/components/dropdown-menu/dropdown-menu-label

import SwiftUI
import MaterialUIKit

struct DropdownMenuExample: View {
    
    @State private var isMenuActive: Bool = false
    
    var body: some View {
        NavigationContainer {
            VStack(alignment: .leading, spacing: MaterialUIKit.configuration.verticalStackSpacing) {
                Switch("Show Dropdown Menu", isOn: $isMenuActive)
                    .padding(MaterialUIKit.configuration.contentPadding)
                    .background(.materialUISecondaryBackground)
                    .cornerRadius(MaterialUIKit.configuration.cornerRadius)
                
                Separator()
                
                DropdownMenu(isActive: $isMenuActive) {
                    DropdownMenuLabel(systemImage: "1.circle.fill", "Option 1")
                    DropdownMenuLabel(systemImage: "2.circle.fill", "Option 2")
                    DropdownMenuLabel(systemImage: "3.circle.fill", "Option 3")
                } label: {
                    Text("Dropdown Menu")
                        .multilineTextAlignment(.leading)
                }
                
                Spacer()
            }
            
            .navigationContainerTopBar(
                title: "Dropdown Menu & Label",
                backButtonHidden: false,
                style: .inline
            )
        }
    }
}

#Preview {
    DropdownMenuExample()
}
