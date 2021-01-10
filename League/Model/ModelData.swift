//
//  ModelData.swift
//  League
//
//  Created by Ali Mantaev on 2021-01-09.
//

import Foundation

var teams: [Team] = load("teamData.json")

// Loading data from a JSON file
func load<T: Decodable>(_ filename: String) -> T {
    var data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    }
    catch {
        fatalError("Couldn't load data from \(filename) in the main bundle:\n\(error)")
    }
    
    do {
        return try JSONDecoder().decode(T.self, from: data)
    }
    catch {
        fatalError("Couldn't parse data from \(filename) as \(T.self):\n\(error)")
    }
}

