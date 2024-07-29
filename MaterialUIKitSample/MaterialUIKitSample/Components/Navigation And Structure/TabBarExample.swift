//
//  TabBarExample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 28/07/24.
//

// Docs:
// - https://swift-packages.gitbook.io/materialuikit/components/tab-bar
// - https://swift-packages.gitbook.io/materialuikit/components/tab-bar/tabbar-item

import SwiftUI
import MaterialUIKit

struct TabBarExample: View {
    @State private var selection = TabBarItem(systemImage: "house.fill", titleKey: "Home")
    
    var body: some View {
        TabBar(selection: $selection) {
            HomeView()
                .tabBarItem(systemImage: "house.fill", titleKey: "Home", selection: $selection)
            
            Container {
                Text("Profile View")
            }
            .tabBarItem(systemImage: "person.fill", titleKey: "Profile", selection: $selection)
            
            Container {
                Text("Notifications")
            }
            .tabBarItem(systemImage: "bell.fill", titleKey: "Notifications", selection: $selection)
            
            Container {
                Text("Settings")
            }
            .tabBarItem(systemImage: "gear", titleKey: "Settings", selection: $selection)
        }
    }
}

fileprivate struct HomeView: View {
    var body: some View {
        NavigationContainer {
            Text("Home View")
            
                .navigationContainerTopBar(
                    title: "Tab Bar",
                    backButtonHidden: false,
                    style: .inline
                )
        }
    }
}

#Preview {
    TabBarExample()
}
