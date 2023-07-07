//
//  GraphView.swift
//  InvestTracker
//
//  Created by Filip Bulander on 06.07.2023.
//

import SwiftUI

struct GraphView: View {
    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            Text("Tab 1")
        }
        .tabItem {
            Image(systemName: "chart.line.uptrend.xyaxis")
            Text("Graphs")
        }
    }
}

struct GraphView_Previews: PreviewProvider {
    static var previews: some View {
        GraphView()
    }
}
