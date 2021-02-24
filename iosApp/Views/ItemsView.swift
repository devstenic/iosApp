//
//  ItemsView.swift
//  MateuszRus
//
//  Created by Krzysztof Kogut on 18/02/2021.
//

import SwiftUI

struct ItemsListView: View {
    var items: [MenuItem]
    
    var body: some View {
        List {
            ForEach(items) { item in
                Text(item.name)
            }
        }
    }
}
