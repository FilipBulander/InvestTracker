//
//  CheckboxRowView.swift
//  InvestTracker
//
//  Created by Filip Bulander on 05.07.2023.
//

import SwiftUI

struct CheckboxRowView: View {
    let index: Int
    @Binding var isChecked: Bool
    
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: isChecked ? "checkmark.square.fill" : "square")
                .foregroundColor(.white)
                .onTapGesture {
                    isChecked.toggle()
                }
            Text("Item \(index + 1)")
                .foregroundColor(.white)
            Spacer()
        }
    }
}

struct CheckboxRowView_Previews: PreviewProvider {
    static var previews: some View {
        CheckboxRowView(index: 1, isChecked: .constant(true))
    }
}
