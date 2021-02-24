//
//  ItemsListRow.swift
//  iDine
//
//  Created by Paul Hudson on 08/02/2021.
//

import SwiftUI

struct ItemsListRow: View {
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
            Image(item.thumbnailImage)
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
