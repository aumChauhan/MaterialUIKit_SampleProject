//
//  MUIDatePickerSample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/05/24.
//

import SwiftUI

// https://github.com/aumChauhan/MaterialUIKit/wiki/MUIDatePicker

struct MUIDatePickerSample: View {
    
    @State private var isDatePickerPresented = false
    @State private var selectedDate = Date()
    
    var body: some View {
        MUINavigationView {
            MUIList(listStyle: .plain) {
                Text("Selected Date: \(selectedDate.formattedMUIDate())")
                    .padding(.horizontal, 3)
                    
                MUISwitch("Toggle Date Picker", isOn: $isDatePickerPresented)
            }
            .muiNavigationBar(title: "Date Picker", backButtonHidden: false, style: .inline)
        }
        
        // Date Picker Modifier
        .muiDatePicker(isPresented: $isDatePickerPresented, selection: $selectedDate)
    }
}

#Preview {
    MUIDatePickerSample()
}
