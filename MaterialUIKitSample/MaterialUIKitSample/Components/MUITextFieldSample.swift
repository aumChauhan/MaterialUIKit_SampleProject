//
//  MUITextFieldSample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/05/24.
//

import SwiftUI

// https://github.com/aumChauhan/MaterialUIKit/wiki/MUITextField

struct MUITextFieldSample: View {
    
    @State private var username: String = ""
    
    var body: some View {
        MUINavigationView {
            MUIList(listStyle: .plain) {
                // Default(Basic) Textfield
                MUITextField("Default Textfield", text: $username)
                    .padding(.top, 5)
                
                // With SF Symbol
                MUITextField(systemSymbol: "person", "With SF Symbol", text: $username)
                
                
                // With SF Symbol and Custom Background
                MUITextField(systemSymbol: "person", "With SF Symbol & Custom Background", text: $username, background: .muiPrimaryBackground)

            }
            .muiNavigationBar(title: "TextField", backButtonHidden: false, style: .inline)
        }
    }
}

#Preview {
    MUITextFieldSample()
}
