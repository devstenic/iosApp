//
//  ItemsView.swift
//  MateuszRus
//
//  Created by Mateusz Rus on 18/02/2021.
//

import SwiftUI

struct ItemsListView: View {
    @Binding var selectedView: Int
    @State var selectedItems = Set<MenuItem>()
    @EnvironmentObject var order: Order
    var category: String
    let items: [MenuItem]
    
    var body: some View {
        VStack() {
            List {
                ForEach(items) { item in
                    NavigationLink(destination: ItemDetailView(selectedView: $selectedView, item: item)) {
                        ListItemRow(selectedItems: $selectedItems, item: item)
                    }
                }
            }
            Button("Order") {
                order.add(items: selectedItems)
                selectedView = 2
                selectedItems.removeAll()
            }
            .padding()
            .disabled(selectedItems.isEmpty)
        }
        .navigationTitle(category)
    }
}
