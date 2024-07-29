//
//  TextBoxExample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/07/24.
//

// Docs: https://swift-packages.gitbook.io/materialuikit/components/text-box

import SwiftUI
import MaterialUIKit

struct TextBoxExample: View {
    
    @State private var text: String = ""
    
    var body: some View {
        NavigationContainer {
            Collection(style: .plain) {
                VStack(alignment: .leading) {
                    Text("Text Box with Custom Corner radii")
                        .font(.footnote)
                    
                    TextBox("Enter Text", text: $text)
                }
                
                VStack(alignment: .leading) {
                    Text("Text Box with SF-Symbol & Default Corner radii")
                        .font(.footnote)
                    
                    TextBox(systemImage: "pencil", "Enter Text", text: $text)
                }
                
                VStack(alignment: .leading) {
                    Text("Text Box with SF Symbol, Custom Background & Custom Corner Radius")
                        .font(.footnote)
                    
                    TextBox(systemImage: "pencil", "Enter Text", text: $text, background: .materialUITertiaryBackground)
                }
                
                VStack(alignment: .leading) {
                    Text("Text Box with Custom Corner radii")
                        .font(.footnote)
                    
                    TextBox("Enter Text", text: $text)
                        .textBoxCornerRadius(.infinity)
                }
            }
            
            .navigationContainerTopBar(
                title: "Text Box",
                backButtonHidden: false,
                style: .inline
            )
        }
    }
}

#Preview {
    TextBoxExample()
}
