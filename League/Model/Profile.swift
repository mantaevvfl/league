//
//  Profile.swift
//  League
//
//  Created by Ali Mantaev on 2021-01-16.
//

import Foundation

struct Profile {
    var username: String
    var notifications: Bool = true
    var description: Trait = Trait.fanatic
    var favouriteTeam: String = teams[5].name
    
    // Create a default profile for testing purposes
    static let `default` = Profile(username: "mantaev.vfl")
    
    enum Trait: String, CaseIterable, Identifiable {
        case speedDemon = "⚡️"
        case fanatic = "🎽"
        case goalScorer = "🥅"
        case insaneControl = "⚽️"
        case strong = "💪🏼"
        
        var id: String {self.rawValue}
    }
    
}
