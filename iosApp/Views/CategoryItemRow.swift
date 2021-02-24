//
//  CategoryListRow.swift
//  MateuszRus
//
//  Created by Mateusz Rus on 22/02/2021.
//

import SwiftUI

struct CategoryItemRow: View {
    let category: MenuCategory
    
    var body: some View {
        HStack {
            Image(category.image)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 2))
            
            VStack(alignment: .leading) {
                Text(category.name)
                    .font(.headline)
            }
        }
    }
}
