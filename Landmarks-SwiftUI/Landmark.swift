//
//  Landmark.swift
//  Landmarks-SwiftUI
//
//  Created by sofia on 18.02.2025.
//

import Foundation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var category: String
    var park: String
    var state: String
    var description: String
}
