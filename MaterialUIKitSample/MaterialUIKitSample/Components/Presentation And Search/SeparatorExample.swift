//
//  SeparatorExample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 28/07/24.
//

// Docs: https://swift-packages.gitbook.io/materialuikit/components/separator

import SwiftUI
import MaterialUIKit

struct SeparatorExample: View {
    var body: some View {
        NavigationContainer {
            VStack(spacing: 20) {
                VStack {
                    Text("Default Horizontally Oriented Separator")
                    
                    Separator()
                }
                
                VStack {
                    Text("Vertically Oriented Separator")
                    
                    Separator(orientation: .vertical)
                }
                
                Spacer()
            }
            
            .navigationContainerTopBar(
                title: "Separator",
                backButtonHidden: false,
                style: .inline
            )
        }
    }
}

#Preview {
    SeparatorExample()
}
