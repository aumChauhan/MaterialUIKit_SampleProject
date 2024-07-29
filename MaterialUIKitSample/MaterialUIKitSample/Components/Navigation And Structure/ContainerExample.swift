//
//  ContainerExample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 28/07/24.
//

// https://swift-packages.gitbook.io/materialuikit/components/container

import SwiftUI
import MaterialUIKit

struct ContainerExample: View {
    var body: some View {
        NavigationContainer {
            Collection {
                Text("Container wraps any provided content within a styled background with consistent padding and spacing as defined by the configuration settings.")
                    .foregroundStyle(.materialUISecondaryTitle)
                    .fontWeight(.medium)
            }
            
            .navigationContainerTopBar(
                title: "Container",
                backButtonHidden: false,
                style: .inline
            )
        }
    }
}

#Preview {
    ContainerExample()
}
