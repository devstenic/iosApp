//
//  CategoryListView.swift
//  MateuszRus
//
//  Created by Mateusz Rus on 18/02/2021.
//

import SwiftUI

struct CategoryListView: View {
    @Binding var selectedView: Int
    let menu = Bundle.main.decode([MenuCategory].self, from: "menu.json")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(menu) { category in
                    NavigationLink(destination: ItemsListView(selectedView: $selectedView, category: category.name, items: category.items)) {
                        CategoryItemRow(category: category)
                    }
                }
            }
            .navigationTitle("Categories")
        }
    }
}
