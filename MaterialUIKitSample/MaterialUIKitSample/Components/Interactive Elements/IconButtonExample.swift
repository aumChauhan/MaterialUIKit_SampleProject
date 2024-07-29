//
//  IconButtonExample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 28/07/24.
//

// Docs:
// - https://swift-packages.gitbook.io/materialuikit/components/icon-button
// - https://swift-packages.gitbook.io/materialuikit/components/icon-button/iconbuttonstyle

import SwiftUI
import MaterialUIKit

struct IconButtonExample: View {
    var body: some View {
        NavigationContainer {
            Collection(style: .plain) {
                HStack {
                    Text("Elevated")
                    Spacer()
                    
                    IconButton(systemImage: "heart.fill", style: .elevated) {
                        Void ()
                    }
                    .iconButtonSize(5)
                    .iconButtonFontSize(.subheadline)
                }
                
                HStack {
                    Text("Filled")
                    Spacer()
                    
                    IconButton(systemImage: "heart.fill", style: .filled){
                        Void ()
                    }
                    .iconButtonSize(5)
                    .iconButtonFontSize(.subheadline)
                }
                
                HStack {
                    Text("Tonal")
                    Spacer()
                    
                    IconButton(systemImage: "heart.fill", style: .tonal) {
                        Void ()
                    }
                    .iconButtonSize(5)
                    .iconButtonFontSize(.subheadline)
                }
            }
            
            .navigationContainerTopBar(
                title: "Icon Button",
                backButtonHidden: false,
                style: .inline
            )
        }
    }
}

#Preview {
    IconButtonExample()
}
