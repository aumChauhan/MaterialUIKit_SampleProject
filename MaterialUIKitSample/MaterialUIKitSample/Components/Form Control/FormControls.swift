//
//  FormControls.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/07/24.
//

import SwiftUI
import MaterialUIKit

struct FormControls: View {
    var body: some View {
        NavigationContainer {
            Collection {
                NavigationRoute {
                    CheckboxExample()
                } label: {
                    NavigationRouteLabel(systemImage: "checkmark", "Checkbox")
                }
                
                NavigationRoute {
                    DateAndTimeSelectorExample()
                } label: {
                    NavigationRouteLabel(systemImage: "calendar", "Date & Time Selector")
                }
                
                NavigationRoute {
                    RadioButtonGroupExample()
                } label: {
                    NavigationRouteLabel(systemImage: "checklist", "Radio Button Group")
                }
                
                NavigationRoute {
                    SwitchExample()
                } label: {
                    NavigationRouteLabel(systemImage: "switch.2", "Switch")
                }
                
                NavigationRoute {
                    SecureTextBoxExample()
                } label: {
                    NavigationRouteLabel(systemImage: "keyboard.badge.eye", "Secure Text Box")
                }
                
                NavigationRoute {
                    TextBoxExample()
                } label: {
                    NavigationRouteLabel(systemImage: "keyboard", "Text Box")
                }
            }
            
            .navigationContainerTopBar(
                title: "From Controls",
                backButtonHidden: false,
                style: .inline
            )
        }
    }
}

#Preview {
    FormControls()
}
