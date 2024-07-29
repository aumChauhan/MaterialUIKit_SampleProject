//
//  FABExample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 28/07/24.
//

// Docs: https://swift-packages.gitbook.io/materialuikit/components/fab

import SwiftUI
import MaterialUIKit

struct FABExample: View {
    var body: some View {
        NavigationContainer {
            Collection(style: .insetGrouped) {
                Text("FABs offer configurable corner radii.")
                    .foregroundStyle(.materialUISecondaryTitle)
            }
            
            .navigationContainerTopBar(
                title: "Floating Action Button",
                backButtonHidden: false,
                style: .inline
            )
        }
        .floatingActionButton(systemImage: "message.fill", titleKey: "New Chat") {}
        
        // FAB with Customized Corner Radius
        /*
         .floatingActionButton(
            systemImage: "message.fill",
            titleKey: "New Chat",
            cornerRadius: .infinity
         ) {}
         */
    }
}

#Preview {
    FABExample()
}
