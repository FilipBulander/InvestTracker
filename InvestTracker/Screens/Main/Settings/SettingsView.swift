//
//  SettingsView.swift
//  InvestTracker
//
//  Created by Filip Bulander on 06.07.2023.
//

import SwiftUI

struct SettingsView: View {
    
    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            Text("Tab 3")
        }
        .background()
        .tabItem {
            Image(systemName: "gearshape")
            Text("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
