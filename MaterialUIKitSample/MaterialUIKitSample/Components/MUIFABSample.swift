//
//  MUIFABSample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/05/24.
//

import SwiftUI

// https://github.com/aumChauhan/MaterialUIKit/wiki/MUIFloatingButton

struct MUIFABSample: View {
    var body: some View {
        MUINavigationView {
            MUIList(listStyle: .plain) {
                ForEach(1..<10) { i in
                    Text("\(i)")
                }
            }
            .muiNavigationBar(title: "FAB", backButtonHidden: false, style: .inline)
        }
        
        // Floating Action Button Modifier
        .muiFloatingButton(systemSymbol: "pencil", title: "Action Button") {
            print("Floating button tapped!")
        }
    }
}

#Preview {
    MUIFABSample()
}
