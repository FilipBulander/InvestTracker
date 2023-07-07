//
//  ChecklistCategoryOnboardingView.swift
//  InvestTracker
//
//  Created by Filip Bulander on 05.07.2023.
//

import SwiftUI

struct ChecklistCategoryOnboardingView: View {
    enum Constants {
        static var listCornerRadius: CGFloat = 10
        static var listShadowRadius: CGFloat = 5
        static var underlineHeight: CGFloat = 1
    }
    
    @ObservedObject var vm: ChecklistCategoryOnboardingVM
    
    var body: some View {
        VStack {
            Text(R.string.localizable.onboardingSecondTitle)
                .font(.title)
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .frame(maxHeight: .infinity)
            list
        }
        .onDisappear {
            vm.saveCategories()
        }
    }
    
    private var list: some View {
        VStack {
            ForEach(0..<vm.isChecked.count, id: \.self) { index in
                VStack {
                    CheckboxRowView(
                        name: vm.name[index],
                        isChecked: $vm.isChecked[index]
                    )
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

struct ChecklistCategoryOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        mockThisWorld()
        return ChecklistCategoryOnboardingView(vm: ChecklistCategoryOnboardingVM())
            .background(Color.background)
    }
}
