//
//  CollectionExample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 28/07/24.
//

// Docs: https://swift-packages.gitbook.io/materialuikit/components/collection

import SwiftUI
import MaterialUIKit

struct CollectionExample: View {
    var body: some View {
        NavigationContainer {
            Collection(style: .plain) {
                Section {
                    Collection(style: .plain) {
                        Text("Item 1")
                        Text("Item 2")
                        Text("Item 3")
                    }
                } header: {
                    Text("Plain")
                        .foregroundStyle(.materialUIAccent)
                }
                
                Section {
                    Collection(style: .inset) {
                        Text("Item 1")
                        Text("Item 2")
                        Text("Item 3")
                    }
                } header: {
                    Text("Inset")
                        .foregroundStyle(.materialUIAccent)
                }
                
                Section {
                    Collection(style: .insetGrouped) {
                        Text("Item 1")
                        Text("Item 2")
                        Text("Item 3")
                    }
                } header: {
                    Text("Inset Grouped")
                        .foregroundStyle(.materialUIAccent)
                }
            }
            
            .navigationContainerTopBar(
                title: "Collection",
                backButtonHidden: false,
                style: .inline
            )
        }
    }
}

#Preview {
    CollectionExample()
}
