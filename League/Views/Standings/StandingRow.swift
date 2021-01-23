//
//  StandingRow.swift
//  League
//
//  Created by Ali Mantaev on 2021-01-12.
//

import SwiftUI

struct StandingRow: View {
    var team: Team
    var profile: Profile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading) {
            profile.favouriteTeam == team.name ? Text(team.name).bold() : Text(team.name)
            Text("\(team.league)")
                .foregroundColor(Color.gray)
        }
    }
}

struct StandingRow_Previews: PreviewProvider {    
    static var previews: some View {
        StandingRow(team: ModelData().teams[1])
            .previewLayout(.fixed(width: 500, height: 80))
        
    }
}
