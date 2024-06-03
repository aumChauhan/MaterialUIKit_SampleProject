//
//  ContentView.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 26/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MUINavigationView {
            ScrollView {
                sectionHeading("Dialog & Alerts")
                MUIList(listStyle: .insetGrouped) {
                    MUINavigationLink {
                        MUIAlertSample()
                    } label: {
                        MUINavigationLabel(systemImage: "bell", "Alert")
                    }
                    
                    MUINavigationLink {
                        MUIDialogSheetSample()
                    } label: {
                        MUINavigationLabel(systemImage: "rectangle.and.paperclip", "Dialog Sheet")
                    }
                    
                    MUINavigationLink {
                        MUISnackbarSample()
                    } label: {
                        MUINavigationLabel(systemImage: "square.bottomthird.inset.filled", "Snack Bar")
                    }
                }
                
                sectionHeading("Form Controls")
                MUIList(listStyle: .insetGrouped) {
                    MUINavigationLink {
                        MUICheckboxSample()
                    } label: {
                        MUINavigationLabel(systemImage: "app.badge.checkmark", "Checkbox")
                    }
                    
                    MUINavigationLink {
                        MUIDatePickerSample()
                    } label: {
                        MUINavigationLabel(systemImage: "calendar", "Date Picker")
                    }
                    
                    MUINavigationLink {
                        MUIRadioButtonGroupSample()
                    } label: {
                        MUINavigationLabel(systemImage: "largecircle.fill.circle", "Radio Button")
                    }
                    
                    MUINavigationLink {
                        MUISecurefieldSample()
                    } label: {
                        MUINavigationLabel(systemImage: "ellipsis.rectangle", "Secure Field")
                    }
                    
                    MUINavigationLink {
                        MUISwitchSample()
                    } label: {
                        MUINavigationLabel(systemImage: "switch.2", "Switch")
                    }
                    
                    MUINavigationLink {
                        MUITextFieldSample()
                    } label: {
                        MUINavigationLabel(systemImage: "square.and.pencil", "Text Field")
                    }
                    
                    MUINavigationLink {
                        MUITimePickerSample()
                    } label: {
                        MUINavigationLabel(systemImage: "clock", "Time Picker")
                    }
                }
                
                sectionHeading("Interactive Elements")
                MUIList(listStyle: .insetGrouped) {
                    MUINavigationLink {
                        MUIButtonSample()
                    } label: {
                        MUINavigationLabel(systemImage: "rectangle.and.hand.point.up.left", "Button")
                    }
                    
                    MUINavigationLink {
                        MUICardViewSample()
                    } label: {
                        MUINavigationLabel(systemImage: "rectangle.grid.2x2", "Card")
                    }
                    
                    MUINavigationLink {
                        MUIFABSample()
                    } label: {
                        MUINavigationLabel(systemImage: "plus.circle.fill", "Floating Action Button")
                    }
                    
                    MUINavigationLink {
                        MUIIconButtonSample()
                    } label: {
                        MUINavigationLabel(systemImage: "square.and.arrow.up.circle.fill", "Icon Button")
                    }
                    
                    MUINavigationLink {
                        MUIMenuSample()
                    } label: {
                        MUINavigationLabel(systemImage: "contextualmenu.and.cursorarrow", "Menu")
                    }
                }
                
                sectionHeading("Navigation & Structure")
                MUIList(listStyle: .insetGrouped) {
                    MUINavigationLink {
                        MUIListSample()
                    } label: {
                        MUINavigationLabel(systemImage: "list.bullet", "List")
                    }
                    
                    MUINavigationLink {
                        MUINavigationViewSample()
                    } label: {
                        MUINavigationLabel(systemImage: "arrow.right.arrow.left", "Navigation View")
                    }
                    
                    MUINavigationLink {
                        MUISegmentedControlSample()
                    } label: {
                        MUINavigationLabel(systemImage: "rectangle.split.3x1", "Segmented Control")
                    }
                    
                    MUINavigationLink {
                        MUITabViewSample()
                    } label: {
                        MUINavigationLabel(systemImage: "square.grid.2x2", "Tab View")
                    }
                    
                }
                
                sectionHeading("Presentation")
                MUIList {
                    MUINavigationLink {
                        MUIProgressSample()
                    } label: {
                        MUINavigationLabel(systemImage: "chart.pie.fill", "Progress View")
                    }
                }
                
                sectionHeading("Search")
                MUIList {
                    MUINavigationLink {
                        MUISearchbarSample()
                    } label: {
                        MUINavigationLabel(systemImage: "magnifyingglass", "Search Bar")
                    }
                }
            }
            .muiNavigationTitle("MaterialUIKit")
        }
    }
    
    func sectionHeading(_ title: String) -> some View {
        HStack {
            Text(title)
                .font(.title3)
                .foregroundStyle(.muiSecondaryTitle)
            
            Spacer()
        }
        .padding(.vertical, 10)
        .padding(.leading, 5)
    }
}

#Preview {
    ContentView()
}
