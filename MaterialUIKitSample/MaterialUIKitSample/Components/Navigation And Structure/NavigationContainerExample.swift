//
//  NavigationContainerExample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 28/07/24.
//

// Docs:
// - https://swift-packages.gitbook.io/materialuikit/components/navigation-container
// - https://swift-packages.gitbook.io/materialuikit/components/navigation-container/navigation-route
// - https://swift-packages.gitbook.io/materialuikit/components/navigation-container/navigation-route-label
// - https://swift-packages.gitbook.io/materialuikit/components/navigation-container/navigationcontainerheaderstyle

import SwiftUI
import MaterialUIKit

struct NavigationContainerExample: View {
    var body: some View {
        NavigationContainer {
            Collection {
                NavigationRoute {
                    NavigationContainer {
                        Text("Child View")
                            .navigationContainerTitle("Child View")
                            .navigationContainerHeaderStyle(.inline)
                            .navigationContainerBackButtonHidden(false)
                            .navigationContainerToolbar {
                                ActionButton("Toolbar Item", style: .text) {}
                            }
                    }
                } label: {
                    NavigationRouteLabel(systemImage: "arrowshape.turn.up.right.fill", "Navigation Route")
                }
            }
            
            .navigationContainerTitle("Navigation Container")
            .navigationContainerBackButtonHidden(false)
            .navigationContainerToolbar {
                ActionButton("Toolbar Item", style: .text) {}
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
        }
    }
}

#Preview {
    NavigationContainerExample()
}
