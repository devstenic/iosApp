//
//  MainView.swift
//  MateuszRus
//
//  Created by Mateusz Rus on 18/02/2021.
//

import SwiftUI

struct MainView: View {
    @State var selectedView = 1
    @StateObject var order = Order()
    private let locationManager = LocationManager()
    
    var body: some View {
        TabView(selection: $selectedView) {
            CategoryListView(selectedView: $selectedView)
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
                .environmentObject(order)
                .tag(1)

            CartView()
                .tabItem {
                    Label("Cart", systemImage: "cart")
                }
                .environmentObject(order)
                .tag(2)
            MapView()
                .tabItem {
                    Label("Map", systemImage: "map")
                }
                .tag(3)
            AboutAppView()
                .tabItem {
                    Label("About App", systemImage: "info.circle")
                }
                .tag(4)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
