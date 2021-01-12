//
//  StandingList.swift
//  League
//
//  Created by Ali Mantaev on 2021-01-09.
//

import SwiftUI

struct StandingList: View {
    var team: Team
    
    var body: some View {
        Text(team.name)
    }
}

struct StandingList_Previews: PreviewProvider {
    static var previews: some View {
        StandingList(team: teams[1])
    }
}
