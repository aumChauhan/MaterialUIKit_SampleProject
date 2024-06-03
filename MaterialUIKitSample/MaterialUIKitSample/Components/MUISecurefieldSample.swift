//
//  MUISecurefieldSample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/05/24.
//

import SwiftUI

// https://github.com/aumChauhan/MaterialUIKit/wiki/MUISecureField

struct MUISecurefieldSample: View {
    
    @State private var password: String = ""
    
    var body: some View {
        MUINavigationView {
            MUIList(listStyle: .plain) {
                // Default(Basic) Securefield
                MUISecureField("Basic", text: $password)
                    .padding(.top, 4)
                
                // With SF Symbol
                MUISecureField(systemSymbol: "lock", "With SF Symbol", text: $password)
                
                // With SF Symbol and Custom Background
                MUISecureField(systemSymbol: "lock", "With Custom Background", text: $password, .muiTertiaryBackground)
            }
            .muiNavigationBar(title: "SecureField", backButtonHidden: false, style: .inline)
        }
    }
}

#Preview {
    MUISecurefieldSample()
}
