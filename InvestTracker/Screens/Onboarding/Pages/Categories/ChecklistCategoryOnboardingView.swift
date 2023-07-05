//
//  ChecklistCategoryOnboardingView.swift
//  InvestTracker
//
//  Created by Filip Bulander on 05.07.2023.
//

import SwiftUI

struct ChecklistCategoryOnboardingView: View {
    @ObservedObject var vm: ChecklistCategoryOnboardingVM
    
    var body: some View {
        ZStack {
            VStack {
                WaveShape(
                    amplitude: WaveConstants.amplitude,
                    frequency: WaveConstants.frequency,
                    phase: WaveConstants.phase * 1
                )
                .fill(Color.init(hex: "#51087E", alpha: 1.0))
                .frame(height: 100)
                Spacer()
            }
            .ignoresSafeArea(.all)
            VStack {
                Text(R.string.localizable.onboardingSecondTitle)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                ForEach(0..<vm.isChecked.count, id: \.self) { index in
                    CheckboxRowView(
                        index: index,
                        isChecked: $vm.isChecked[index]
                    )
                }
                .listStyle(.plain)
            }
        }
    }
}

struct ChecklistCategoryOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        ChecklistCategoryOnboardingView(vm: ChecklistCategoryOnboardingVM())
    }
}
