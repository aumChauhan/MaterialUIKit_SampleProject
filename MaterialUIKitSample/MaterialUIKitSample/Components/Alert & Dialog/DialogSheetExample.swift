//
//  DialogSheetExample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/07/24.
//

// DOCS: https://swift-packages.gitbook.io/materialuikit/components/dialog-sheet

import SwiftUI
import MaterialUIKit

struct DialogSheetExample: View {
    
    @State private var showDialogSheet = false
    
    var body: some View {
        NavigationContainer {
            Collection {
                Switch("Show Dialog Sheet", isOn: $showDialogSheet)
            }
            
            .navigationContainerTopBar(
                title: "Dialog Sheet",
                backButtonHidden: false,
                style: .inline
            )
        }
        
        .dialogSheet(isPresented: $showDialogSheet) {
            VStack(alignment: .leading, spacing: 15) {
                Text("Dialog Sheet")
                    .font(MaterialUIKit.configuration.h4)
                    .fontWeight(.bold)
                
                Text("It can contain any custom content.")
                    .font(MaterialUIKit.configuration.h4)
            }
        }
    }
}

#Preview {
    DialogSheetExample()
    
}
