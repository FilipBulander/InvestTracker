//
//  CurrencyCheckboxRow.swift
//  InvestTracker
//
//  Created by Filip Bulander on 06.07.2023.
//

import SwiftUI

struct CurrencyCheckboxRow: View {
    let item: CurrencyCheckboxListItem
    @Binding var checkboxItems: [CurrencyCheckboxListItem]
    
    var body: some View {
        Button(action: {
            buttonTapped()
        }) {
            content
        }
        .padding()
    }
    
    private var content: some View {
        HStack {
            Text(item.title)
                .foregroundColor(.white)
            Spacer()
            Image(systemName: item.isSelected ?
                  "checkmark.square.fill"
                  : "square")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(.white)
        }
    }
    
    private func buttonTapped() {
        checkboxItems = checkboxItems.map { checkboxItem in
            var mutableItem = checkboxItem
            mutableItem.isSelected = checkboxItem.id == item.id
            ? !item.isSelected
            : false
            return mutableItem
        }
    }
}

struct CurrencyCheckboxRow_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CurrencyCheckboxRow(
                item: CurrencyCheckboxListItem(
                    title: "Hello",
                    isSelected: true
                ),
                checkboxItems: .constant([])
            )
            CurrencyCheckboxRow(
                item: CurrencyCheckboxListItem(
                    title: "Hello",
                    isSelected: false
                ),
                checkboxItems: .constant([])
            )
        }
        .background(Color.background)
    }
}

