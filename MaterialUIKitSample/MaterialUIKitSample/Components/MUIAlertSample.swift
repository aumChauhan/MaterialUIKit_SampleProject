//
//  MUIAlertSample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 26/05/24.
//

import SwiftUI
import MaterialUIKit

// https://github.com/aumChauhan/MaterialUIKit/wiki/MUIAlert

struct MUIAlertSample: View {
    
    @State private var showAlert: Bool = false
    @State private var showAlertWithSecondaryButton: Bool = false
    
    var body: some View {
        MUINavigationView {
            MUIList(listStyle: .plain) {
                MUISwitch("Toggle Alert", isOn: $showAlert)
                
                MUISwitch("Alert With Secondary Button", isOn: $showAlertWithSecondaryButton)
            }
            .muiNavigationBar(title: "Alert", backButtonHidden: false, style: .inline)
        }
        
        // Alert Without Secondary Button
        .muiAlert(
            isPresented: $showAlert,
            title: "Alert Title",
            message: "Alert Description",
            primaryButtonTitle: "Done") {
                showAlert.toggle()
            }
        
        // Alert With Secondary Button
            .muiAlert(
                isPresented: $showAlertWithSecondaryButton,
                title: "Alert Title",
                message: "Alert Description",
                primaryButtonTitle: "Done", primaryAction: {
                    showAlertWithSecondaryButton.toggle()
                }, secondaryButtonTitle: "Cancel") {
                    Void()
                }
    }
}

#Preview {
    MUIAlertSample()
}
