//
//  StandingDetail.swift
//  League
//
//  Created by Ali Mantaev on 2021-01-12.
//

import SwiftUI

struct StandingDetail: View {
    
    var team: Team
    var matches: [Match]
    var matchesPlayed: [Match] {
        matches.filter {(match: Match) in match.homeTeam == team.name || match.awayTeam == team.name}
    }
    
    var homeWins: [Match] {
        matchesPlayed.filter {(match: Match) in
            match.homeTeam == team.name && match.result[0] > match.result[1]
        }
    }
    
    var awayWins: [Match] {
        matchesPlayed.filter {(match: Match) in
            match.awayTeam == team.name && match.result[1] > match.result[0]
        }
    }
    
    
    var body: some View {
        VStack {
            Text(team.name)
                .font(.title)
                .bold()
            HStack(spacing: 20) {
                Text("W: \(team.wins)")
                Text("D: \(team.draws)")
                Text("L: \(team.losses)")
            }
            .font(.subheadline)
            
            Divider()
            
            ScrollView {
                ForEach(matchesPlayed, id: \.id) {match in
                    VStack {
                        Text(match.date)
                            .font(.headline)
                        HStack {
                            Text("\(match.homeTeam)")
                            HStack {
                                homeWins.contains(match) ? Text("\(match.result[0])").bold() : Text("\(match.result[0])")
                                Text("-")
                                awayWins.contains(match) ? Text("\(match.result[1])").bold() : Text("\(match.result[1])")
                            }
                            Text("\(match.awayTeam)")
                        }
                    }
                    .padding()
                }
            }
        }
    }
}

struct StandingDetail_Previews: PreviewProvider {
    static var previews: some View {
        StandingDetail(team: filteredTeams[2], matches: matches)
    }
}
