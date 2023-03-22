//
//  Home.swift
//  BahnBonus
//
//  Created by Lasse Stolley on 24.08.22.
//

import SwiftUI

struct Home: View {
    
    @State var showCardView: Bool = Bool()
    
    var body: some View {
        NavigationView {
            List {
                Text("Home")
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.large)
            .sheet(isPresented: $showCardView) {
                Card()
            }
            .onAppear {
                showCardView = true
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
