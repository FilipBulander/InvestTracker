//
//  MainView.swift
//  InvestTracker
//
//  Created by Filip Bulander on 05.07.2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            // First Tab
            Text("Tab 1")
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("Tab 1")
                }
            
            // Second Tab
            Text("Tab 2")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Tab 2")
                }
            
            // Third Tab
            Text("Tab 3")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Tab 3")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
