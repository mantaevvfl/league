//
//  LeagueApp.swift
//  League
//
//  Created by Ali Mantaev on 2021-01-09.
//

import SwiftUI

@main
struct LeagueApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
