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
    var teamMatches: [Match] {
        matches.filter {(match: Match) in match.homeTeam == team.name || match.awayTeam == team.name}
    }
        
    var homeWins: [Match] {
        teamMatches.filter {(match: Match) in
            match.homeTeam == team.name && match.result[0] > match.result[1]
        }
    }
    
    var awayWins: [Match] {
        teamMatches.filter {(match: Match) in
            match.awayTeam == team.name && match.result[1] > match.result[0]
        }
    }
    
    var teamDraws: [Match] {
        teamMatches.filter {(match: Match) in
            match.result[0] == match.result[1]
        }
    }
    
    var teamLosses: [Match] {
        let otherMatches = homeWins + awayWins + teamDraws
        return teamMatches.filter {(match: Match) in
            !otherMatches.contains(match)
        }
    }
    
    var totalPoints: Int {
        (homeWins + awayWins).count * 3 + teamDraws.count
    }
    
    
    var body: some View {
        VStack {
            Text(team.name)
                .font(.title)
                .bold()
            HStack(spacing: 20) {
                Text("W: \(homeWins.count + awayWins.count)")
                Text("D: \(teamDraws.count)")
                Text("L: \(teamLosses.count)")
            }
            .font(.subheadline)
            
            Divider()
            
            ScrollView {
                ForEach(teamMatches, id: \.id) {match in
                    VStack {
                        Text(match.date)
                            .font(.headline)
                        HStack {
                            Text("\(match.homeTeam)")
                                .frame(width: 150)
                            HStack {
                                homeWins.contains(match) ? Text("\(match.result[0])").bold() : Text("\(match.result[0])")
                                Text("-")
                                awayWins.contains(match) ? Text("\(match.result[1])").bold() : Text("\(match.result[1])")
                            }
                            .frame(width: 75)
                            Text("\(match.awayTeam)")
                                .frame(width: 150)
                        }
                        .padding()
                    }
                    .padding()
                    
                }
            }
        }
    }
}

struct StandingDetail_Previews: PreviewProvider {
    
    static var previews: some View {
        StandingDetail(team: ModelData().teams[3], matches: ModelData().matches)
    }
}
