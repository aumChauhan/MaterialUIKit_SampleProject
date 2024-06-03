//
//  MUISegmentedControlSample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/05/24.
//

import SwiftUI

// https://github.com/aumChauhan/MaterialUIKit/wiki/MUISegmentedControl

struct MUISegmentedControlSample: View {
    
    @State private var items: [String] = ["Item 1", "Item 2", "Item 3"]
    @State private var selection = "Item 1"
    
    var body: some View {
        MUINavigationView {
            MUIList(listStyle: .plain) {
                
                // Segmented Control Example
                MUISegmentedControl(items, id: \.self, selectedItem: $selection) { item in
                    Text(item)
                        .padding(10)
                }
            }
            .muiNavigationBar(title: "Segmented Control", backButtonHidden: false, style: .inline)
        }
    }
}

#Preview {
    MUISegmentedControlSample()
}
