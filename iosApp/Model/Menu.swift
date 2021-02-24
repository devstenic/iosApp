//
//  Menu.swift
//  MateuszRus
//
//  Created by Mateusz Rus on 18/02/2021.
//

import SwiftUI

struct MenuCategory: Codable, Identifiable {
    var id: UUID
    var name: String
    var items: [MenuItem]
    var image: String
}

struct MenuItem: Codable, Equatable, Identifiable, Hashable {
    var id: UUID
    var name: String
    var price: Int
    var image: String
    var previewImage: String
}
