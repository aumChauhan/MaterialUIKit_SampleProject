//
//  PresentationAndSearch.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 28/07/24.
//

import SwiftUI
import MaterialUIKit

struct PresentationAndSearch: View {
    var body: some View {
        NavigationContainer {
            Collection {
                NavigationRoute {
                    ProgressBarExample()
                } label: {
                    NavigationRouteLabel(systemImage: "gauge.with.needle.fill", "Progress Bar")
                }
                
                NavigationRoute {
                    SeparatorExample()
                } label: {
                    NavigationRouteLabel(systemImage: "trapezoid.and.line.vertical.fill", "Separator")
                }
                
                NavigationRoute {
                    SearchBoxExample()
                } label: {
                    NavigationRouteLabel(systemImage: "magnifyingglass", "Search Box")
                }
            }
            
            .navigationContainerTopBar(
                title: "Presentation & Search",
                backButtonHidden: false,
                style: .inline
            )
        }
    }
}

#Preview {
    PresentationAndSearch()
}
