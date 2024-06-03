//
//  MUITabViewSample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/05/24.
//

import SwiftUI

// https://github.com/aumChauhan/MaterialUIKit/wiki/MUITabView

struct MUITabViewSample: View {
    
    @State private var selection: MUITabBarItem = MUITabBarItem(systemImage: "house.fill", title: "Home")
    
    var body: some View {
        MUITabBarView(selection: $selection) {
            Text("Home")
                .muiTabBarItem(systemImage: "house.fill", title: "Home", selection: $selection)
            
            Text("Favorites")
                .muiTabBarItem(systemImage: "heart.fill", title: "Favorites", selection: $selection)
            
            Text("Profile")
                .muiTabBarItem(systemImage: "person.fill", title: "Profile", selection: $selection)
            
            Text("Settings")
                .muiTabBarItem(systemImage: "gear", title: "Settings", selection: $selection)
        }
    }
}

#Preview {
    MUITabViewSample()
}
