//
//  PremiumLoungeConditions.swift
//  BahnBonus
//
//  Created by Lasse Stolley on 17.09.22.
//

import SwiftUI

struct PremiumLoungeConditions: View {
    
    @Environment(\.dismiss) var dimiss
    
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Ihre Statusvorteil:")
                        .font(Font.custom("DBScreenSans-Bold", size: 16))
                    Text("Gutschein für den Eintritt zu allen DB Lounge Standorten in Deutschland inkl. Mitnahme einer Begleitperson \n• Gilt nur für die Dauer der Statuslaufzeit \n• Gilt für den Premium Bereich der DB Lounges \n• Keine Barauszahlung möglich \n• Wir behalten uns eine stichprobenartige Personenprüfung durch Ausweisdokument vor \n• Es gelten die Nutzungsbedingungen der DB Lounge")
                        .font(Font.custom("DBScreenSans-Regular", size: 16))
                }
            }
            .padding()
        }
        .navigationTitle("Konditionen")
        .navigationBarTitleDisplayMode(.large)
        .toolbar {
            Button("Fertig") {
                dimiss.callAsFunction()
            }
            .bold(true)
        }
    }
}

struct PremiumLoungeConditions_Previews: PreviewProvider {
    static var previews: some View {
        PremiumLoungeConditions()
    }
}
