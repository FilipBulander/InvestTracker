//
//  DivideCategoryOnboardingView.swift
//  InvestTracker
//
//  Created by Filip Bulander on 05.07.2023.
//

import SwiftUI

struct DivideCategoryOnboardingView: View {
    enum Constants {
        static let buttonSpacing: CGFloat = 10
        static let totalButtonWidth: CGFloat = 200
    }
    
    private var vm: DivideCategoryOnboardingVM
    
    init(vm: DivideCategoryOnboardingVM) {
        self.vm = vm
    }
    
    var body: some View {
        ZStack {
            VStack {
                WaveShape(
                    amplitude: WaveConstants.amplitude,
                    frequency: WaveConstants.frequency,
                    phase: WaveConstants.phase * 2
                )
                .fill(Color.init(hex: "#51087E", alpha: 1.0))
                .frame(height: 100)
                Spacer()
            }
            .ignoresSafeArea(.all)
            VStack {
                Text(R.string.localizable.onboardingThirdTitle)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                HStack(spacing: Constants.buttonSpacing) {
                    noButton
                    yesButton
                }
                .frame(maxWidth: Constants.totalButtonWidth)
            }
        }
    }
    
    private var noButton: some View {
        Button(action: {
            vm.noTapped()
        }, label: {
            Text(R.string.localizable.commonNo)
                .frame(maxWidth: .infinity)
        })
        .buttonStyle(PlasticButtonStyle())
    }
    
    private var yesButton: some View {
        Button(action: {
            vm.yesTapped()
        }, label: {
            Text(R.string.localizable.commonYes)
                .frame(maxWidth: .infinity)
        })
        .buttonStyle(PlasticButtonStyle())
    }
}

struct DivideCategoryOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        DivideCategoryOnboardingView(vm: DivideCategoryOnboardingVM())
    }
}
