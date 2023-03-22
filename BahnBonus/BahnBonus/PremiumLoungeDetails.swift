//
//  PremiumLoungeDetails.swift
//  BahnBonus
//
//  Created by Lasse Stolley on 17.09.22.
//

import SwiftUI

struct PremiumLoungeDetails: View {
    
    @Environment(\.dismiss) var dimiss
    
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Ihre Statusvorteil:")
                        .font(Font.custom("DBScreenSans-Bold", size: 16))
                    Text("Genießen Sie und eine Begleitperson die Atmosphäre der DB Lounges an 15 Standorten in Deutschland. Hier können Sie in Ruhe arbeiten oder entspannen und sich über kostenloses WLAN sowie kalte und heiße Getränke freuen.")
                        .font(Font.custom("DBScreenSans-Regular", size: 16))
                }
                VStack(alignment: .leading, spacing: 8) {
                    Text("So funktioniert es:")
                        .font(Font.custom("DBScreenSans-Bold", size: 16))
                    Text("• Einfach den QR-Code aus der BahnBonus App heraus am elektronischen Lesegerät scannen und in die DB Lounge eintreten \n• Zugang mit einer Begleitperson durch Anmeldung am Empfang möglich")
                        .font(Font.custom("DBScreenSans-Regular", size: 16))
                }
            }
            .padding()
        }
        .navigationTitle("Details")
        .navigationBarTitleDisplayMode(.large)
        .toolbar {
            Button("Fertig") {
                dimiss.callAsFunction()
            }
            .bold()
        }
    }
}

struct PremiumLoungeDetails_Previews: PreviewProvider {
    static var previews: some View {
        PremiumLoungeDetails()
    }
}
