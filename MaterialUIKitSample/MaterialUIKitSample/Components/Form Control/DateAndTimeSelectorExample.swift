//
//  DateSelectorExample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/07/24.
//

// Docs:
// - https://swift-packages.gitbook.io/materialuikit/components/date-selector
// - https://swift-packages.gitbook.io/materialuikit/components/time-selector

import SwiftUI
import MaterialUIKit

struct DateAndTimeSelectorExample: View {
    
    @State private var isDateSelectorPresented: Bool = false
    @State private var isTimeSelectorPresented: Bool = false
    @State private var selectedDate: Date = Date()
    
    var body: some View {
        NavigationContainer {
            Collection {
                Switch("Show Date Selector", isOn: $isDateSelectorPresented)
                Switch("Show Time Selector", isOn: $isTimeSelectorPresented)
            }
            
            .navigationContainerTopBar(
                title: "Date & Time Selector",
                backButtonHidden: false,
                style: .inline
            )
        }
        .dateSelector(isPresented: $isDateSelectorPresented, selection: $selectedDate)
        
        .timeSelector(isPresented: $isTimeSelectorPresented, selection: $selectedDate)
    }
}

#Preview {
    DateAndTimeSelectorExample()
}
