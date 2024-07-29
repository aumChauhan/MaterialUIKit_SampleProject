//
//  AlertAndDialog.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/07/24.
//

import SwiftUI
import MaterialUIKit

struct AlertAndDialog: View {
    var body: some View {
        NavigationContainer {
            Collection {
                NavigationRoute {
                    DialogExample()
                } label: {
                    NavigationRouteLabel(systemImage: "bell.fill", "Dialog")
                }
                
                NavigationRoute {
                    DialogSheetExample()
                } label: {
                    NavigationRouteLabel(systemImage: "list.bullet.rectangle", "Dialog Sheet")
                }
                
                
                NavigationRoute {
                    SnackbarExample()
                } label: {
                    NavigationRouteLabel(systemImage: "rectangle.bottomhalf.filled", "Snackbar")
                }
            }
            
            .navigationContainerTopBar(
                title: "Alert & Dialog",
                backButtonHidden: false,
                style: .inline
            )
        }
    }
}

#Preview {
    AlertAndDialog()
}
