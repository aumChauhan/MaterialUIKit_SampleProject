//
//  MUICheckboxSample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/05/24.
//

import SwiftUI
import MaterialUIKit

// https://github.com/aumChauhan/MaterialUIKit/wiki/MUICheckBox

struct MUICheckboxSample: View {
    
    @State private var isChecked: Bool = true
    @State private var isChecked2: Bool = false
    
    var body: some View {
        MUINavigationView {
            MUIList(listStyle: .plain) {
                // Checkbox
                MUICheckbox("Check Box", isOn: $isChecked)
                MUICheckbox("Check Box", isOn: $isChecked2)
            }
            .muiNavigationBar(title: "Checkbox", backButtonHidden: false, style: .inline)
        }
    }
}

#Preview {
    MUICheckboxSample()
}
