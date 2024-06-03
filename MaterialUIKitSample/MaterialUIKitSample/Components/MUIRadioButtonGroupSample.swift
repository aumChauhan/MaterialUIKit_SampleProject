//
//  MUIRadioButtonGroupSample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/05/24.
//

import SwiftUI

// https://github.com/aumChauhan/MaterialUIKit/wiki/MUIRadioButtonGroup

struct MUIRadioButtonGroupSample: View {
    
    @State private var selectedOption: String = "Option 1"
    private let options = ["Option 1", "Option 2", "Option 3"]
    
    var body: some View {
        MUINavigationView {
            MUIList(listStyle: .plain) {
                // Radio Button Group
                MUIRadioButtonGroup(options, id: \.self, selectedItem: $selectedOption) { option in
                    Text(option)
                }
            }
            .muiNavigationBar(title: "Radio Button Group", backButtonHidden: false, style: .inline)
        }
    }
}

#Preview {
    MUIRadioButtonGroupSample()
}
