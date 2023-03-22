//
//  BahnBonusApp.swift
//  BahnBonus
//
//  Created by Lasse Stolley on 24.08.22.
//

import SwiftUI

@main
struct BahnBonusApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                Home()
                    .tabItem {
                        Label("Home", systemImage: "house.fill")
                    }
                Advantages()
                    .tabItem {
                        Label("Vorteile", systemImage: "ticket.fill")
                    }
                BahnBonus()
                    .tabItem {
                        Label("BahnBonus", systemImage: "creditcard.fill")
                    }
                Bonuses()
                    .tabItem {
                        Label("Prämien", systemImage: "gift.fill")
                    }
                Info()
                    .tabItem {
                        Label("Infos", systemImage: "person.fill")
                    }
            }
        }
    }
}
