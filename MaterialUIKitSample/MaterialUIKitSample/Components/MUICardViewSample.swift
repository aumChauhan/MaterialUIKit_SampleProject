//
//  MUICardViewSample.swift
//  MaterialUIKitSample
//
//  Created by Aum Chauhan on 27/05/24.
//

import SwiftUI

// https://github.com/aumChauhan/MaterialUIKit/wiki/MUICardView

struct MUICardViewSample: View {
    var body: some View {
        MUINavigationView {
            ScrollView {
                // MUICardView With Default Style & Type
                MUICardView(
                    heading: "Default Card", subheading: "Card Style: Tonal",
                    image: "sample_image_1",
                    content: {
                        Text("Content goes here.")
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                )
                .padding(.bottom, 5)
                
                MUIDivider()
                
                // MUICardView With Custom Style & Type
                MUICardView(
                    heading: "Card Style: Elevated", subheading: "Card Type: Stack",
                    image: "sample_image_1",
                    cardType: .stack,
                    cardStyle: .elevated,
                    content: {
                        Text("Content goes here.")
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                )
            }
            .muiNavigationBar(title: "Card", backButtonHidden: false, style: .inline)
        }
    }
}

#Preview {
    MUICardViewSample()
}
