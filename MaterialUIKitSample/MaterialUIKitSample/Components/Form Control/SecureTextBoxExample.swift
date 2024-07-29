//
//  SecureTextBoxExample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/07/24.
//

// Docs: https://swift-packages.gitbook.io/materialuikit/components/secure-text-box

import SwiftUI
import MaterialUIKit

struct SecureTextBoxExample: View {
    
    @State private var password: String = ""
    
    var body: some View {
        NavigationContainer {
            Collection(style: .plain) {
                VStack(alignment: .leading) {
                    Text("Default Secure Text Box")
                        .font(.footnote)
                    
                    SecureTextBox("Password", text: $password)
                }
                
                VStack(alignment: .leading) {
                    Text("Secure Text Box with Custom SF-Symbol")
                        .font(.footnote)
                    
                    SecureTextBox(systemImage: "eye.fill", "Password", text: $password)
                }
                
                VStack(alignment: .leading) {
                    Text("Secure Text Box with SF Symbol & Custom Background")
                        .font(.footnote)
                    
                    SecureTextBox(systemImage: "eye.fill", "Password", text: $password, background: .materialUITertiaryBackground)
                }
                
                VStack(alignment: .leading) {
                    Text("Secure Text Box with Custom Corner radii")
                        .font(.footnote)
                    
                    SecureTextBox("Password", text: $password)
                        .secureTextBoxCornerRadius(.infinity)
                }
            }
            
            .navigationContainerTopBar(
                title: "Secure Text Box",
                backButtonHidden: false,
                style: .inline
            )
        }
    }
}

#Preview {
    SecureTextBoxExample()
}
