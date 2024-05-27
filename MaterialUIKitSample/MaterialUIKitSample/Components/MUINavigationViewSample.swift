//
//  MUINavigationViewSample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/05/24.
//

import SwiftUI
import MaterialUIKit

// https://github.com/aumChauhan/MaterialUIKit/wiki/MUINavigationView
// https://github.com/aumChauhan/MaterialUIKit/wiki/MUILabel

struct MUINavigationViewSample: View {
    
    @State private var navigationTitleStyle: MUINavigationHeaderStyle = .large
    
    var body: some View {
        // Navigation View
        MUINavigationView {
            VStack {
                // Navigation Link
                MUINavigationLink {
                    MUIListSample()
                } label: {
                    // Navigation Label
                    MUINavigationLabel(systemImage: "face.smiling.fill", "Navigation Link Label")
                }
                
                Spacer()
                
                MUIButton("Switch Header Style", style: .filledInfinity) {
                    withAnimation {
                        navigationTitleStyle = (navigationTitleStyle == .inline) ? .large : .inline
                    }
                }
            }
            
            // Navigation Title
            .muiNavigationTitle("Navigation View")
            
            // Navigation Title Style
            .muiNavigationHeaderStyle(navigationTitleStyle)
            
            // Dismiss Navigation Stack (default: true)
            .muiNavigationBarBackButtonHidden(false)
            
            // Toolbar
            .muiToolbar {
                HStack {
                    Spacer()
                    
                    MUIButton("Toolbar", style: .text) {
                    }
                }
            }
            
            // Shortand For Navigation Bar
            //.muiNavigationBar(title: "", backButtonHidden: false, style: .inline)
        }
    }
}

#Preview {
    MUINavigationViewSample()
}
