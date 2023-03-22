//
//  Info.swift
//  BahnBonus
//
//  Created by Lasse Stolley on 24.08.22.
//

import SwiftUI

struct Info: View {
    var body: some View {
        NavigationView {
            List {
                Text("Infos")
            }
            .navigationTitle("Infos")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct Info_Previews: PreviewProvider {
    static var previews: some View {
        Info()
    }
}
