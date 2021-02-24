//
//  AboutAppView.swift
//  MateuszRus
//
//  Created by Mateusz Rus on 18/02/2021.
//

import SwiftUI

struct AboutAppView: View {
    var body: some View {
        VStack {
            Text("App made by")
                .font(.headline)
            Text("Mateusz Rus")
                .font(.title3)
        }
    }
}

struct AboutAppView_Previews: PreviewProvider {
    static var previews: some View {
        AboutAppView()
    }
}
