//
//  StandingList.swift
//  League
//
//  Created by Ali Mantaev on 2021-01-09.
//

import SwiftUI

struct StandingList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showingProfile: Bool = false
    
    var teamsSorted: [Team] {
        modelData.teams.sorted(by: {(t1: Team, t2: Team) in
            t1.position < t2.position
        })
    }
    
    var body: some View {
        NavigationView {
            List
            {
                ForEach(teamsSorted, id: \.id) {team in
                    NavigationLink(destination: StandingDetail(team: team, matches: modelData.matches)) {
                            StandingRow(team: team)
                        }
                        
                    }
            }
            .navigationTitle("Clubs")
            .toolbar {
                Button(action: {showingProfile.toggle()}) {
                        Image(systemName: "person.crop.circle")
                            .accessibilityLabel("User Profile")
                }
                .sheet(isPresented: $showingProfile) {
                    ProfileHost()
                }
            }
        }
    }
}

struct StandingList_Previews: PreviewProvider {
    static var previews: some View {
        StandingList()
            .environmentObject(ModelData())
    }
}
