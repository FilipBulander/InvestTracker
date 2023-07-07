//
//  MainView.swift
//  InvestTracker
//
//  Created by Filip Bulander on 05.07.2023.
//

import SwiftUI

struct MainView: View {
    @ObservedObject private var vm: MainVM
    
    init(vm: MainVM) {
        self.vm = vm
    }
    
    var body: some View {
        TabView(selection: .constant(1)) {
            GraphView()
                .tag(0)
            ListView(vm: vm.listVM)
                .tag(1)
            SettingsView()
                .tag(2)
        }
        .accentColor(.main) // Set the active tab color
        .onAppear {
            vm.listVM.onAppear()
            UITabBar.appearance().barTintColor = UIColor(Color.secondaryBackground)// Set the background color of the tab bar
            UITabBar.appearance().unselectedItemTintColor = UIColor(Color.white) // Set the unselected tab color
            UITabBar.appearance().isTranslucent = false // Set translucency to false for opaque appearance
        }
        .background(Color.secondaryBackground)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        mockThisWorld()
        return MainView(
            vm: MainVM(
                router: MainRouter(
                    appRouter: AppRouter(
                        navigationController: nil
                    )
                )
            )
        )
    }
}
