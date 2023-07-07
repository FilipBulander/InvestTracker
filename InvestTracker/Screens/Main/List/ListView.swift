//
//  ListView.swift
//  InvestTracker
//
//  Created by Filip Bulander on 06.07.2023.
//

import SwiftUI

struct ListView: View {
    @ObservedObject private var vm: ListVM
    
    
    enum Constants {
        static var listCornerRadius: CGFloat = 10
        static var underlineHeight: CGFloat = 1
    }
    
    init(vm: ListVM) {
        self.vm = vm
    }
    
    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            VStack {
                ForEach(vm.categories, id: \.name) { category in
                    DisclosureGroup {
                        ForEach(category.subcategories, id: \.self) { subcategory in
                            VStack {
                                HStack {
                                    Text(subcategory)
                                        .foregroundColor(Color.main)
                                    Spacer()
                                }
                                Rectangle()
                                    .fill(Color.background)
                                    .frame(maxWidth: .infinity)
                                    .frame(height: Constants.underlineHeight)
                            }
                        }
                    } label: {
                        VStack {
                            Text(category.name)
                            Rectangle()
                                .fill(Color.background)
                                .frame(maxWidth: .infinity)
                                .frame(height: Constants.underlineHeight)
                        }
                    }
                    .padding()
                }
            }
            .background(Color.secondaryBackground)
            .border(Color.background)
            .cornerRadius(Constants.listCornerRadius)
            .padding()
        }
        .tabItem {
            Image(systemName: "list.bullet.indent")
            Text("Overview")
        }
    }
}

struct Main {
    var name: String
    var subcategories: [String]
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        mockThisWorld()
        return ListView(vm: ListVM())
    }
}
