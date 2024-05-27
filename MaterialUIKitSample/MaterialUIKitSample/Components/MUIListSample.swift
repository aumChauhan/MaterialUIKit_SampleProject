//
//  MUIListSample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/05/24.
//

import SwiftUI
import MaterialUIKit

// https://github.com/aumChauhan/MaterialUIKit/wiki/MUIList

struct MUIListSample: View {
    var body: some View {
        MUINavigationView {
            ScrollView {
                Text("Inset Grouped Style")
                    .font(.title3)
                    .foregroundStyle(.muiPrimaryTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 8)
                
                // With Inset Group Style
                MUIList(listStyle: .insetGrouped) {
                    Text("Item 1")
                    Text("Item 2")
                    Text("Item 3")
                }
                
                MUIDivider()
                    .padding(.vertical, 10)

                Text("Inset Style")
                    .font(.title3)
                    .foregroundStyle(.muiPrimaryTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                // With Inset Style
                MUIList(listStyle: .inset) {
                    Text("Item 1")
                    Text("Item 2")
                    Text("Item 3")
                }
                
                MUIDivider()
                    .padding(.vertical, 10)

                Text("Plain Style")
                    .font(.title3)
                    .foregroundStyle(.muiPrimaryTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)

                // With Plain Style
                MUIList(listStyle: .plain) {
                    Text("Item 1")
                    Text("Item 2")
                    Text("Item 3")
                }
            }
            
            .muiNavigationBar(title: "List", backButtonHidden: false, style: .inline)
        }
    }
}

#Preview {
    MUIListSample()
}
