//
//  RootContainer.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/07/24.
//

import SwiftUI
import MaterialUIKit

struct RootContainer: View {
    var body: some View {
        NavigationContainer {
            Collection {
                NavigationRoute {
                    AlertAndDialog()
                } label: {
                    NavigationRouteLabel(systemImage: "bell.fill", "Dialog & Alerts")
                }
                
                NavigationRoute {
                    FormControls()
                } label: {
                    NavigationRouteLabel(systemImage: "pencil.and.list.clipboard", "Form Controls")
                }
                
                NavigationRoute {
                    InteractiveElements()
                } label: {
                    NavigationRouteLabel(systemImage: "hand.tap.fill", "Interactive Elements")
                }
                
                NavigationRoute {
                    NavigationAndStructure()
                } label: {
                    NavigationRouteLabel(systemImage: "arrow.right.doc.on.clipboard", "Navigation & Structure")
                }
                
                NavigationRoute {
                    PresentationAndSearch()
                } label: {
                    NavigationRouteLabel(systemImage: "magnifyingglass", "Presentation & Search")
                }
            }
            
            .navigationContainerTitle("Components")
            .navigationContainerToolbar {
                Link(destination: URL(string: "https://swift-packages.gitbook.io/materialuikit")!) {
                    DropdownMenuLabel(systemImage: "arrow.up.forward", "Docs")
                }
            }
        }
    }
}

#Preview {
    RootContainer()
}
