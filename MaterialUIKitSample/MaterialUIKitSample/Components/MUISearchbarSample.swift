//
//  MUISearchbarSample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/05/24.
//

import SwiftUI

// https://github.com/aumChauhan/MaterialUIKit/wiki/MUISearchBar

struct MUISearchbarSample: View {
    
    @State private var searchText = ""
    
    var body: some View {
        MUINavigationView {
            VStack {
                // Searchbar
                MUISearchBar(searchText: $searchText) {
                    print("Searching for: \(searchText)")
                }
                
                Spacer()
            }
            .muiNavigationBar(title: "SearchBar", backButtonHidden: false, style: .inline)
        }
    }
}

#Preview {
    MUISearchbarSample()
}
