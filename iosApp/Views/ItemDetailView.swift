//
//  ItemDetailView.swift
//  MateuszRus
//
//  Created by Mateusz Rus on 20/02/2021.
//

import SwiftUI

struct ItemDetailView: View {
    @Binding var selectedView: Int
    @EnvironmentObject var order: Order
    let item: MenuItem
    
    var body: some View {
        VStack {
            Image(item.image)
                .resizable()
                .scaledToFit()
            
            Button("Order") {
                order.add(item: item)
                selectedView = 2
            }
            .padding()
            
            Spacer()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}
