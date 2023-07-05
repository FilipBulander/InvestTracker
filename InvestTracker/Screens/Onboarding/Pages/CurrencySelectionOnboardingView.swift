//
//  CurrencySelectionOnboardingView.swift
//  InvestTracker
//
//  Created by Filip Bulander on 05.07.2023.
//

import SwiftUI

struct CurrencySelectionOnboardingView: View {
    var body: some View {
        ZStack {
            VStack {
                WaveShape(
                    amplitude: WaveConstants.amplitude,
                    frequency: WaveConstants.frequency,
                    phase: WaveConstants.phase * 3
                )
                .fill(Color.init(hex: "#51087E", alpha: 1.0))
                .frame(height: 100)
                Spacer()
            }
            .ignoresSafeArea(.all)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

struct CurrencySelectionOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        CurrencySelectionOnboardingView()
    }
}
