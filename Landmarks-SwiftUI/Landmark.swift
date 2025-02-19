//
//  Landmark.swift
//  Landmarks-SwiftUI
//
//  Created by sofia on 18.02.2025.
//

import Foundation
import SwiftUI
import CoreLocation

// Landmark data model
struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var category: String
    var park: String
    var state: String
    var description: String
    
//    imageName propety is private because users of the Landmarks structure only care about the image itself
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
//    Property is also private because it will only be used to create a publc computed property
    private var coordinates: Coordinates
    
//    Computing locationCoordinate property that's usefult for interacting with MapKit
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longtitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var longtitude: Double
        var latitude: Double
    }
}
