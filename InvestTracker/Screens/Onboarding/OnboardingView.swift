//
//  OnboardingView.swift
//  InvestTracker
//
//  Created by Filip Bulander on 03.07.2023.
//

import SwiftUI

struct OnboardingView: View {
    private var vm: OnboardingVM?
    
    init(vm: OnboardingVM? = nil) {
        self.vm = vm
    }
    
    var body: some View {
        VStack(spacing: 0) {
            TabView {
                WelcomeOnboardingView()
                    .tabItem {
                        Image(systemName: "1.circle")
                        Text("Step 1")
                    }
                
                ChecklistCategoryOnboardingView()
                    .tabItem {
                        Image(systemName: "2.circle")
                        Text("Step 2")
                    }
                
                DivideCategoryOnboardingView()
                    .tabItem {
                        Image(systemName: "3.circle")
                        Text("Step 3")
                    }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
        Button(action: {
            vm?.onFinish()
        }, label: {
            Text("Open main screen")
        })
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
