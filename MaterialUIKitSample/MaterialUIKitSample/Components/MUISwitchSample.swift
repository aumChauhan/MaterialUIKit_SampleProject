//
//  MUISwitchSample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/05/24.
//

import SwiftUI

// https://github.com/aumChauhan/MaterialUIKit/wiki/MUISwitch

struct MUISwitchSample: View {
    
    @State private var showSwitch: Bool = false
    @State private var showSwitch2: Bool = true
    
    var body: some View {
        MUINavigationView {
            MUIList(listStyle: .plain) {
                // MUISwitch Example
                MUISwitch("Toogle Switch", isOn: $showSwitch)
                MUISwitch("Toogle Switch", isOn: $showSwitch2)
            }
            .muiNavigationBar(title: "Switch", backButtonHidden: false, style: .inline)
        }
    }
}

#Preview {
    MUISwitchSample()
}
