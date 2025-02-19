//
//  ModelData.swift
//  Landmarks-SwiftUI
//
//  Created by sofia on 18.02.2025.
//

import Foundation

var landmark: [Landmark] = load("landmarkData.json")

/// Load JSON data and decode into T data model as long as T conforms to Codable/Decodable protocol
/// - Parameter filename: name of JSON file in main bundle
/// - Returns: decoded data from JSON file as T.self
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle: \n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse file \(filename) ad \(T.self):\n\(error)")
    }
}
