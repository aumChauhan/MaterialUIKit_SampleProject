//
//  ProgressBarExample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 28/07/24.
//

// Docs: https://swift-packages.gitbook.io/materialuikit/components/progress-bar

import SwiftUI
import MaterialUIKit

struct ProgressBarExample: View {
    var body: some View {
        NavigationContainer {
            Collection {
                HStack {
                    Text("Default Progress Bar")
                    Spacer()
                    
                    ProgressBar()
                }
                
                HStack {
                    Text("Customized Line Width")
                    Spacer()
                    
                    ProgressBar(lineWidth: 5)
                }
            }
            
            .navigationContainerTopBar(
                title: "Progress Bar",
                backButtonHidden: false,
                style: .inline
            )
        }
    }
}

#Preview {
    ProgressBarExample()
}
