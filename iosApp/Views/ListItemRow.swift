//
//  ListItemRow.swift
//  MateuszRus
//
//  Created by Mateusz Rus on 20/02/2021.
//

import SwiftUI

struct ListItemRow: View {
    @Binding var selectedItems: Set<MenuItem>
    let item: MenuItem
    var isSelected: Bool {
        selectedItems.contains(item)
    }
    
    var body: some View {
        HStack {
            if isSelected {
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(.black)
                    .onTapGesture {
                        selectedItems.remove(item)
                    }
            } else {
                Image(systemName: "circle").foregroundColor(.black)
                    .foregroundColor(.black)
                    .onTapGesture {
                        selectedItems.insert(item)
                    }
            }
            Image(item.previewImage)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 2))
            
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                Text("$\(item.price)")
            }
        }
    }
}
