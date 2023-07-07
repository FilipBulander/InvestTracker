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
        mockThisWorld()
        return DivideCategoryOnboardingView(vm: DivideCategoryOnboardingVM())
        
    }
}
