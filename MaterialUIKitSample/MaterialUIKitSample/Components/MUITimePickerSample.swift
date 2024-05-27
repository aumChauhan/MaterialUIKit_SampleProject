//
//  MUITimePickerSample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/05/24.
//

import SwiftUI
import MaterialUIKit

// https://github.com/aumChauhan/MaterialUIKit/wiki/MUITimePicker

struct MUITimePickerSample: View {
    
    @State private var isTimePickerPresented = false
    @State private var selectedTime = Date()
    
    var body: some View {
        MUINavigationView {
            MUIList(listStyle: .plain) {
                Text("Selected Time: \(selectedTime.formatted(date: .omitted, time: .complete))")
                    .padding(.horizontal, 3)
                    
                MUISwitch("Toggle Date Picker", isOn: $isTimePickerPresented)
            }
            .muiNavigationBar(title: "Time Picker", backButtonHidden: false, style: .inline)
        }
        
        // TIme Picker Modifier
        .muiTimePicker(isPresented: $isTimePickerPresented, selection: $selectedTime)
    }
}

#Preview {
    MUITimePickerSample()
}
