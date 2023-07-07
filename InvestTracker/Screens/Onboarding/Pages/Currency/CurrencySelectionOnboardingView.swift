//
//  CurrencySelectionOnboardingView.swift
//  InvestTracker
//
//  Created by Filip Bulander on 05.07.2023.
//

import SwiftUI

struct CurrencySelectionOnboardingView: View {
    enum Constants {
        static var listCornerRadius: CGFloat = 10
        static var underlineHeight: CGFloat = 1
    }
    
    @ObservedObject var vm: CurrencySelectionOnboardingVM
    
    var body: some View {
        VStack {
            title
            VStack(alignment: .leading) {
                ForEach(vm.checkboxItems) { item in
                    VStack {
                        CurrencyCheckboxRow(item: item, checkboxItems: $vm.checkboxItems)
                        Rectangle()
                            .fill(Color.background)
                            .frame(maxWidth: .infinity)
                            .frame(height: Constants.underlineHeight)
                    }
                }
            }
            .frame(maxWidth: .infinity)
            .background(Color.secondaryBackground)
            .border(Color.background)
            .cornerRadius(Constants.listCornerRadius)
            .padding()
        }
    }
    
    private var title: some View {
        Text(R.string.localizable.onboardingFourthTitle)
            .font(.title)
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
    }
}
