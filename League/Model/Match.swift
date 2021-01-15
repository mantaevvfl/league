//
//  Match.swift
//  League
//
//  Created by Ali Mantaev on 2021-01-14.
//

import Foundation

struct Match: Hashable, Codable, Identifiable {
    var id: Int
    var date: String
    var homeTeam: String
    var awayTeam: String
    var result: [Int]
}
