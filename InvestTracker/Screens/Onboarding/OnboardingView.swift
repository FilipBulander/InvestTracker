//
//  OnboardingView.swift
//  InvestTracker
//
//  Created by Filip Bulander on 03.07.2023.
//

import SwiftUI

struct OnboardingView: View {
    @ObservedObject private var vm: OnboardingVM
    
    init(vm: OnboardingVM) {
        self.vm = vm
    }
    
    var body: some View {
        VStack(spacing: 0) {
            TabView(selection: $vm.tabSelection) {
                WelcomeOnboardingView()
                    .tag(0)
                ChecklistCategoryOnboardingView(vm: vm.checklistVM)
                    .tag(1)
                DivideCategoryOnboardingView(vm: vm.divideCategoryVM)
                    .tag(2)
                CurrencySelectionOnboardingView()
                    .tag(3)
                NotificationOnboardingView()
                    .tag(4)
                FirstTrackOnboardingView()
                    .tag(5)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
            .ignoresSafeArea(.all)
            HStack {
                skipButton
                Spacer()
                nextButton
            }
            .padding()
        }
        .background(Color.init(hex: "#4D4C4C", alpha: 1.0))
        .onAppear {
            vm.onAppear()
        }
    }
    
    private var nextButton: some View {
        Button(action: {
            vm.nextPageTapped()
        }, label: {
            Text(R.string.localizable.commonNext)
                .frame(maxWidth: .infinity)
        })
        .buttonStyle(PlasticButtonStyle())
    }
    
    private var skipButton: some View {
        Button(action: {
            //TODO think about this
            vm.nextPageTapped()
        }, label: {
            Text(vm.isLastPage ?
                 R.string.localizable.commonContinue :
                    R.string.localizable.commonSkip
            )
            .frame(maxWidth: .infinity)
        })
        .buttonStyle(PlasticButtonStyle())
    }
}
