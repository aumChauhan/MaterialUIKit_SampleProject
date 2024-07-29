//
//  NavigationAndStructure.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 28/07/24.
//

import SwiftUI
import MaterialUIKit

struct NavigationAndStructure: View {
    var body: some View {
        NavigationContainer {
            Collection {
                NavigationRoute {
                    CollectionExample()
                } label: {
                    NavigationRouteLabel(systemImage: "list.dash", "Collection")
                }
                
                NavigationRoute {
                    ContainerExample()
                } label: {
                    NavigationRouteLabel(systemImage: "tray.fill", "Container")
                }
                
                NavigationRoute {
                    NavigationContainerExample()
                } label: {
                    NavigationRouteLabel(systemImage: "arrow.right.doc.on.clipboard", "Navigation Container")
                }
                
                NavigationRoute {
                    SegmentedButtonsExample()
                } label: {
                    NavigationRouteLabel(systemImage: "square.split.2x1", "Segmented Buttons")
                }
                
                NavigationRoute {
                    TabBarExample()
                } label: {
                    NavigationRouteLabel(systemImage: "platter.filled.bottom.iphone", "Tab Bar")
                }
            }
            
            .navigationContainerTopBar(
                title: "Navigation & Structure",
                backButtonHidden: false,
                style: .inline
            )
        }
    }
}

#Preview {
    NavigationAndStructure()
}
