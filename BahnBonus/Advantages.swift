//
//  Advantages.swift
//  BahnBonus
//
//  Created by Lasse Stolley on 24.08.22.
//

import SwiftUI

struct Advantages: View {
    var body: some View {
        NavigationView {
            List {
                Text("Vorteile")
            }
            .navigationTitle("Vorteile")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct Advantages_Previews: PreviewProvider {
    static var previews: some View {
        Advantages()
    }
}
