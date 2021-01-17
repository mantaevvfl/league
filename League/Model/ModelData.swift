//
//  ModelData.swift
//  League
//
//  Created by Ali Mantaev on 2021-01-09.
//

import Foundation
import Combine

var teams: [Team] = load("teamData.json")
var matches: [Match] = load("matchData.json")
var filteredTeams: [Team] = teams.sorted(by: {(t1: Team, t2: Team) in t1.position < t2.position})
var profile = Profile.default

// Loading data from a JSON file
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
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
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }
    catch {
        fatalError("Couldn't parse data from \(filename) as \(T.self):\n\(error)")
    }
}

