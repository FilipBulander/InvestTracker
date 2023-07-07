//
//  PlasticButtonStyle.swift
//  InvestTracker
//
//  Created by Filip Bulander on 05.07.2023.
//

import SwiftUI

struct PlasticButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(10)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.secondaryBackground)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(
                                Color.background,
                                lineWidth: 1
                            )
                    )
                    .shadow(
                        color: Color.main,
                        radius: 2,
                        x: 0,
                        y: 0
                    )
            )
            .foregroundColor(.white)
            .font(.headline)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
    }
}

struct PlasticButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            // Button action
        }) {
            Text("Plastic Button")
        }
        .buttonStyle(PlasticButtonStyle())
    }
}
