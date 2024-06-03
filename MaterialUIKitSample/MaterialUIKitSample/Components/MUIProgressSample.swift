//
//  MUIProgressSample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/05/24.
//

import SwiftUI

// https://github.com/aumChauhan/MaterialUIKit/wiki/MUIProgressView

struct MUIProgressSample: View {
    var body: some View {
        MUINavigationView {
            MUIList(listStyle: .plain) {
                // Default Progress View
                MUIProgressView()
                    .padding()
                
                // With Custom Width
                MUIProgressView(lineWidth: 1)
                    .padding()
            }
            .muiNavigationBar(title: "Progress View", backButtonHidden: false, style: .inline)
        }
    }
}

#Preview {
    MUIProgressSample()
}
