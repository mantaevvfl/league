//
//  StandingList.swift
//  League
//
//  Created by Ali Mantaev on 2021-01-09.
//

import SwiftUI

struct StandingList: View {
    var teams: [Team]
    
    var body: some View {
        NavigationView {
            List(teams, id: \.id) {team in
                Text(team.name)
            }
            .navigationTitle("League")
        }
    }
}

struct StandingList_Previews: PreviewProvider {
    static var previews: some View {
        StandingList(teams: filteredTeams)
    }
}
