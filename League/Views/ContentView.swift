//
//  ContentView.swift
//  League
//
//  Created by Ali Mantaev on 2021-01-09.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        StandingList(teams: teams)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
