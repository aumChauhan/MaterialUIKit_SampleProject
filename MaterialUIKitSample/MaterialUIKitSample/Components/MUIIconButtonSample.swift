//
//  MUIIconButtonSample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/05/24.
//

import SwiftUI

// https://github.com/aumChauhan/MaterialUIKit/wiki/MUIIconButton

struct MUIIconButtonSample: View {
    var body: some View {
        MUINavigationView {
            MUIList(listStyle: .plain) {
                HStack {
                    Text("Elevated")
                    Spacer()
                    
                    // With Elevated Style
                    MUIIconButton(systemSymbol: "heart.fill", style: .elevated) {
                        // Action to perform when the button is pressed
                    }
                }
                
                HStack {
                    Text("Filled")
                    Spacer()
                    
                    // With Filled Style
                    MUIIconButton(systemSymbol: "heart.fill", style: .filled) {
                        // Action to perform when the button is pressed
                    }
                }
                
                HStack {
                    Text("Tonal")
                    Spacer()
                    
                    // With Tonal Style
                    MUIIconButton(systemSymbol: "heart.fill", style: .tonal) {
                        // Action to perform when the button is pressed
                    }
                }  
                
                HStack {
                    // With Secondary Style

                    Text("Secondary")
                    Spacer()
                    MUIIconButton(systemSymbol: "heart.fill", style: .secondary) {
                        // Action to perform when the button is pressed
                    }
                }
            }
            .muiNavigationBar(title: "Icon Styled Button", backButtonHidden: false, style: .inline)
        }
    }
}

#Preview {
    MUIIconButtonSample()
}
