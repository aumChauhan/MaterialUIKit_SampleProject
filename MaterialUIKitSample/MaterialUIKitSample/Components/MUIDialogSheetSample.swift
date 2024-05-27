//
//  MUIDialogSheetSample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/05/24.
//

import SwiftUI
import MaterialUIKit

// https://github.com/aumChauhan/MaterialUIKit/wiki/MUIDialogSheet

struct MUIDialogSheetSample: View {
    
    @State private var showDialogSheet = false
    
    var body: some View {
        MUINavigationView {
            MUIList(listStyle: .plain) {
                MUISwitch("Toggle Dialog Sheet", isOn: $showDialogSheet)
            }
            
            .muiNavigationBar(title: "DialogSheet", backButtonHidden: false, style: .inline)
        }
        
        // Dialog Sheet Modifier
        .muiDialogSheet(isPresented: $showDialogSheet) {
            // Custom View
            Text("Custom View")
                .foregroundStyle(.muiPrimaryTitle)
        }
    }
}

#Preview {
    MUIDialogSheetSample()
}
