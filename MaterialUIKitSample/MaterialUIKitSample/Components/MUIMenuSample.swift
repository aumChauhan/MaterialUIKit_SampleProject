//
//  MUIMenuSample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/05/24.
//

import SwiftUI

// https://github.com/aumChauhan/MaterialUIKit/wiki/MUIMenu

struct MUIMenuSample: View {
    
    @State private var isMenuActive: Bool = false
    
    var body: some View {
        MUINavigationView {
            VStack {
                HStack {
                    // With Custom Label
                    MUIMenu(
                        isActive: $isMenuActive,
                        content: {
                            MUIMenuLabel(systemImage: "heart.fill", "Like")
                            MUIMenuLabel(systemImage: "gear", "Settings")
                        },
                        label: {
                            Text("Custom Label (Toogle)")
                        }
                    )
                    
                    Spacer()
                    
                    // With Default Label
                    MUIMenu("Default Label") {
                        MUIMenuLabel(systemImage: "heart.fill", "Like")
                        MUIMenuLabel(systemImage: "gear", "Settings")
                    }
                }
                .padding()
                
                Spacer()
            }
            .muiNavigationBar(title: "Menu", backButtonHidden: false, style: .inline)
            
        }
    }
}

#Preview {
    MUIMenuSample()
}
