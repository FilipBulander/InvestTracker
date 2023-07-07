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
        ZStack {
            VStack {
                Rectangle()
                    .fill(Color.secondaryBackground)
                    .shadow(color: Color.main,
                            radius: 10)
                    .frame(height: UIDevice.current.hasNotch ? 100 : 40)
                Spacer()
            }
            .ignoresSafeArea(.all)
            VStack(spacing: 0) {
                TabView(selection: $vm.tabSelection) {
                    WelcomeOnboardingView()
                        .tag(0)
                    ChecklistCategoryOnboardingView(vm: vm.checklistVM)
                        .tag(1)
                    DivideCategoryOnboardingView(vm: vm.divideCategoryVM)
                        .tag(2)
                    CurrencySelectionOnboardingView(vm: vm.currencySelectionVM)
                        .tag(3)
                    NotificationOnboardingView()
                        .tag(4)
                    FirstTrackOnboardingView()
                        .tag(5)
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
                .ignoresSafeArea(.all)
                VStack(alignment: .center) {
                    nextButton
                    if !vm.isLastPage {
                        skipButton
                    }
                }
                .padding()
            }
        }
        .background(Color.background)
        .onAppear {
            vm.onAppear()
        }
    }
    
    private var nextButton: some View {
        Button(action: {
            vm.nextPageTapped()
        }, label: {
            Text(vm.isLastPage ?
                 R.string.localizable.commonContinue :
                    R.string.localizable.commonNext)
            .frame(maxWidth: .infinity)
        })
        .buttonStyle(PlasticButtonStyle())
    }
    
    private var skipButton: some View {
        Button(action: {
            vm.onFinish()
        }, label: {
            Text(R.string.localizable.commonSkip)
                .foregroundColor(.gray)
            .frame(maxWidth: .infinity)
        })
    }
}
