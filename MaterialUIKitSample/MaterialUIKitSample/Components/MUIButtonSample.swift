//
//  MUIButtonSample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 26/05/24.
//

import SwiftUI

// https://github.com/aumChauhan/MaterialUIKit/wiki/MUIButton

struct MUIButtonSample: View {
    var body: some View {
        MUINavigationView {
            MUIList(listStyle: .plain) {
                // Button Width: Dynamic
                
                MUIButton("Tonal", style: .tonal, action: {})
                
                MUIButton("Elvetated", style: .elevated, action: {})
                
                MUIButton("Filled", style: .filled, action: {})
                
                MUIButton("Outline", style: .outline, action: {})
                
                // Button Width: Infinity
                
                MUIButton("Tonal Infinity", style: .tonalInfinity, action: {})
                
                MUIButton("Elvetated Infinity", style: .elevatedInfinity, action: {})
                
                MUIButton("Filled Infinity", style: .filledInfinity, action: {})
                
                MUIButton("Outline Infinity", style: .outlineInfinity, action: {})
            }
            
            .muiNavigationBar(title: "Buttons", backButtonHidden: false, style: .inline)
        }
    }
}

#Preview {
    MUIButtonSample()
}
