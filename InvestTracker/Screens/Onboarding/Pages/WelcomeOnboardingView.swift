//
//  WelcomeOnboardingView.swift
//  InvestTracker
//
//  Created by Filip Bulander on 03.07.2023.
//

import SwiftUI

struct WelcomeOnboardingView: View {
    var body: some View {
        ZStack {
            VStack {
                WaveShape(
                    amplitude: WaveConstants.amplitude,
                    frequency: WaveConstants.frequency,
                    phase: WaveConstants.phase * 0
                )
                .fill(Color.init(hex: "#51087E", alpha: 1.0))
                .shadow(color: Color.white.opacity(0.5), radius: 10)
                .frame(height: 100)
                Spacer()
            }
            .ignoresSafeArea(.all)
            VStack {
                Text(R.string.localizable.onboardingFirstTitle)
                    .font(.title)
                    .padding()
                    .foregroundColor(Color.white)
                Text(R.string.localizable.onboardingFirstDescription)
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .padding()
                    .foregroundColor(Color.white)
            }
        }
    }
}

struct WelcomeOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeOnboardingView()
    }
}
