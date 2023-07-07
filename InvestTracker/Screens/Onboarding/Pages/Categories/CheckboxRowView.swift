//
//  CheckboxRowView.swift
//  InvestTracker
//
//  Created by Filip Bulander on 05.07.2023.
//

import SwiftUI

struct CheckboxRowView: View {
    enum Constants {
        static var height: CGFloat = 40
    }
    
    let name: String
    @Binding var isChecked: Bool
    
    var body: some View {
        HStack {
            Text(name)
                .foregroundColor(.white)
            Spacer()
            Image(systemName: isChecked ? "checkmark.square.fill" : "square")
                .foregroundColor(.white)
                .onTapGesture {
                    isChecked.toggle()
                }
        }
        .padding()
        .frame(height: Constants.height)
    }
}

struct CheckboxRowView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CheckboxRowView(name: "Cash", isChecked: .constant(true))
            CheckboxRowView(name: "Crypto", isChecked: .constant(false))
        }
        .background(Color.secondaryBackground)
    }
}
