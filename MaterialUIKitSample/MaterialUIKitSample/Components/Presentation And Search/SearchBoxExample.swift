//
//  SearchBoxExample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 28/07/24.
//

// Docs: https://swift-packages.gitbook.io/materialuikit/components/search-box

import SwiftUI
import MaterialUIKit

struct SearchBoxExample: View {
    
    @State private var query: String = ""
    
    var body: some View {
        NavigationContainer {
            Collection(style: .plain) {
                VStack(alignment: .leading) {
                    Text("With Default Placeholder")
                    SearchBox(searchText: $query) {
                        Void ()
                    }
                }
                
                VStack(alignment: .leading) {
                    Text("With Custom Placeholder")
                    SearchBox("Search here", searchText: $query) {
                        Void ()
                    }
                }
            }
            
            .navigationContainerTopBar(
                title: "Search Box",
                backButtonHidden: false,
                style: .inline
            )
        }
    }
}

#Preview {
    SearchBoxExample()
}
