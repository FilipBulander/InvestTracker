//
//  WelcomeOnboardingView.swift
//  InvestTracker
//
//  Created by Filip Bulander on 03.07.2023.
//

import SwiftUI

struct WelcomeOnboardingView: View {
    var body: some View {
        VStack {
            Text(R.string.localizable.onboardingFirstTitle)
                .font(.title)
                .padding()
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
            Text(R.string.localizable.onboardingFirstDescription)
                .font(.title3)
                .multilineTextAlignment(.center)
                .padding()
                .foregroundColor(Color.white)
        }
    }
}

struct WelcomeOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeOnboardingView()
    }
}
