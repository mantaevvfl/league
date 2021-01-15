//
//  Team.swift
//  League
//
//  Created by Ali Mantaev on 2021-01-09.
//

import Foundation

struct Team: Hashable, Codable, Identifiable {
    var id: Int
    
    var league: String
    var name: String
    var position: Int
    var wins: Int
    var draws: Int
    var losses: Int
}
