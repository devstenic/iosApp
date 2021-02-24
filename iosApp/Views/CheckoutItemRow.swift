//
//  CartItemRow.swift
//  MateuszRus
//
//  Created by Krzysztof Kogut on 21/02/2021.
//

import SwiftUI

struct CartItemRow: View {
    let item: MenuItem
    
    var body: some View {
        HStack {
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
