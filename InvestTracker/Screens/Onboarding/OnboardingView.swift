//
//  OnboardingView.swift
//  InvestTracker
//
//  Created by Filip Bulander on 03.07.2023.
//

import SwiftUI

struct OnboardingStep1View: View {
    var body: some View {
        VStack {
            Text("Onboarding Step 1")
                .font(.title)
            // Add your content for the first onboarding step here
        }
    }
}

struct OnboardingStep2View: View {
    var body: some View {
        VStack {
            Text("Onboarding Step 2")
                .font(.title)
            // Add your content for the second onboarding step here
        }
    }
}

struct OnboardingStep3View: View {
    var body: some View {
        VStack {
            Text("Onboarding Step 3")
                .font(.title)
            // Add your content for the third onboarding step here
        }
    }
}

struct OnboardingView: View {
    var body: some View {
            TabView {
                OnboardingStep1View()
                    .tabItem {
                        Image(systemName: "1.circle")
                        Text("Step 1")
                    }
                
                OnboardingStep2View()
                    .tabItem {
                        Image(systemName: "2.circle")
                        Text("Step 2")
                    }
                
                OnboardingStep3View()
                    .tabItem {
                        Image(systemName: "3.circle")
                        Text("Step 3")
                    }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
