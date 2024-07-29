//
//  InteractiveElements.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/07/24.
//

import SwiftUI
import MaterialUIKit

struct InteractiveElements: View {
    var body: some View {
        NavigationContainer {
            Collection {
                NavigationRoute {
                    ActionButtonExample()
                } label: {
                    NavigationRouteLabel(systemImage: "hand.tap.fill", "Action Button")
                }
                
                NavigationRoute {
                    DropdownMenuExample()
                } label: {
                    NavigationRouteLabel(systemImage: "contextualmenu.and.cursorarrow", "Dropdown Menu")
                }
                
                NavigationRoute {
                    FABExample()
                } label: {
                    NavigationRouteLabel(systemImage: "plus.circle.fill", "FAB")
                }
                
                NavigationRoute {
                    IconButtonExample()
                } label: {
                    NavigationRouteLabel(systemImage: "circle.dotted.circle.fill", "Icon Button")
                }
            }
            
            .navigationContainerTopBar(
                title: "Interactive Elements",
                backButtonHidden: false,
                style: .inline
            )
        }
    }
}

#Preview {
    InteractiveElements()
}
