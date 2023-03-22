//
//  Bonuses.swift
//  BahnBonus
//
//  Created by Lasse Stolley on 24.08.22.
//

import SwiftUI

struct Bonuses: View {
    var body: some View {
        NavigationView {
            List {
                Text("Prämien")
            }
            .navigationTitle("Prämien")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct Bonuses_Previews: PreviewProvider {
    static var previews: some View {
        Bonuses()
    }
}
