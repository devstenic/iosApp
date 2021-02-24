//
//  MapCoordinator.swift
//  MateuszRus
//
//  Created by Mateusz Rus on 21/02/2021.
//

import Foundation
import MapKit

final class MapCoordinator: NSObject, MKMapViewDelegate {
    var control: MapView
    
    init(_ control: MapView) {
        self.control = control
    }
}
