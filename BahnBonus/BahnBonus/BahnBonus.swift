//
//  BahnBonus.swift
//  BahnBonus
//
//  Created by Lasse Stolley on 24.08.22.
//

import SwiftUI

struct BahnBonus: View {
    
    @State var showCardView: Bool = Bool()
    
    var body: some View {
        NavigationView {
            List {
                Button("BahnBonus Karte") {
                    showCardView = true
                }
            }
            .navigationTitle("BahnBonus")
            .navigationBarTitleDisplayMode(.large)
            .sheet(isPresented: $showCardView) {
                Card()
            }
        }
    }
}

struct BahnBonus_Previews: PreviewProvider {
    static var previews: some View {
        BahnBonus()
    }
}
