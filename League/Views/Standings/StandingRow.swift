//
//  StandingRow.swift
//  League
//
//  Created by Ali Mantaev on 2021-01-12.
//

import SwiftUI

struct StandingRow: View {
    var team: Team
    
    var body: some View {
        HStack(spacing: 10) {
            Text(team.name)
            Spacer()
            Text("\(team.wins)")
            Text("\(team.draws)")
            Text("\(team.losses)")
            Text("\(team.gp)")
            Text("\(team.points)").bold()

        }
    }
}

struct StandingRow_Previews: PreviewProvider {
    static var previews: some View {
        StandingRow(team: filteredTeams[0])
            .previewLayout(.fixed(width: 500, height: 80))
        
    }
}
