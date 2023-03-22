//
//  Card.swift
//  BahnBonus
//
//  Created by Lasse Stolley on 24.08.22.
//

import SwiftUI

struct Card: View {
    
    @Environment(\.dismiss) var dimiss
    
    @State var movePulse: Bool = Bool()
    @State var showPremiumLounge: Bool = Bool()
    @State var cards: [CardData] = [
        .init(title: "Freigetränk Bordgastronomie", number: 12),
        .init(title: "30% Rabatt Bordgastronomie"),
        .init(title: "Eintritt DB Lounge Premium Bereich"),
        .init(title: "Exklusiver Sitzplatzbereich"),
        .init(title: "30 Freiminuten Call a Bike"),
        .init(title: "BahnBonus Statusservice"),
        .init(title: "Bevorzugte Betreuung Reisezentrum"),
        .init(title: "Railteam Lounges"),
        .init(title: "Avis"),
        .init(title: "Europcard"),
        .init(title: "SIXT"),
        .init(title: "bahnshop.de"),
        .init(title: "DB Museum"),
        .init(title: "GetYourGuide"),
        .init(title: "H-Hotels.com"),
        .init(title: "IntercityHotels"),
        .init(title: "Leonardo Hotels"),
        .init(title: "Romantik Hotels & Resturants")
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 24) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(gradient: Gradient(colors: [.platinBackgroundEdge, .platinBackgroundCenter, .platinBackgroundEdge]), startPoint: .leading, endPoint: .bottom))
                            .shadow(radius: 8)
                            .frame(height: 220)
                        Capsule()
                            .frame(width: 40, height: 3, alignment: .leading)
                            .foregroundColor(Color.accentColor)
                            .offset(x: movePulse ? 78 : -136)
                            .animation(.easeInOut(duration: 1.4).repeatForever(autoreverses: true), value: movePulse)
                        VStack {
                            VStack(alignment: .leading, spacing: 24) {
                                HStack {
                                    Image("DB")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    Spacer()
                                    Image("BahnBonus")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                }
                                .frame(height: 24)
                                Text("platin")
                                    .font(Font.custom("DBScreenNews-Bold", size: 28))
                                    .foregroundColor(.platinForegroundCard)
                                    .shadow(color: .platinBackgroundCenter, radius: 0.4)
                            }
                            Spacer()
                            VStack(alignment: .leading, spacing: 16) {
                                Text("7081 4200 0383 9617")
                                    .font(Font.custom("DBScreenSans-Regular", size: 24))
                                    .foregroundColor(.white)
                                HStack {
                                    VStack(alignment: .leading, spacing: 4) {
                                        Text("Gültig bis: \(Text("07.08.2023").font(Font.custom("DBScreenSans-SemiBold", size: 12)))")
                                            .font(Font.custom("DBScreenSans-Regular", size: 12))
                                            .foregroundColor(.white)
                                        Text("Lasse Hendrik Stolley")
                                            .font(Font.custom("DBScreenSans-Regular", size: 14))
                                            .foregroundColor(.white)
                                    }
                                    Spacer()
                                    Menu {
                                        Button(action: {}) {
                                            Label("Kartennummer kopieren", systemImage: "doc.on.clipboard")
                                        }
                                        Button(action: {}) {
                                            Label("Kartennummer vergrößern", systemImage: "text.magnifyingglass")
                                        }
                                    } label: {
                                        Image(systemName: "ellipsis.circle")
                                            .imageScale(.large)
                                            .foregroundColor(.white)
                                    }
                                }
                            }
                        }
                        .padding()
                    }
                    VStack {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Statusvorteile")
                                .font(Font.custom("DBScreenHead-Black", size: 20))
                            Text("Detaillierte Informationen und Einlösebedingungen am einzelnen Gutschein. Vereinzelt werden Einlösungen erst zeitverzögert aktualisiert.")
                                .font(Font.custom("DBScreenSans-Regular", size: 16))
                        }
                        VStack(spacing: -32) {
                            ForEach(cards, id: \.title) { card in
                                if card.title == "Eintritt DB Lounge Premium Bereich" {
                                    Button(action: presentPremiumLounge) {
                                        ZStack {
                                            RoundedRectangle(cornerRadius: 12)
                                                .fill(LinearGradient(gradient: Gradient(colors: [.platinBackgroundEdge, .platinBackgroundCenter, .platinBackgroundEdge]), startPoint: .leading, endPoint: .bottom).shadow(.drop(color: .platinForeground, radius: 4)))
                                                .frame(height: 120)
                                            HStack {
                                                Text(card.title)
                                                    .font(Font.custom("DBScreenSans-SemiBold", size: 18))
                                                    .foregroundColor(Color.platinForeground)
                                                Spacer(minLength: 48)
                                                if let number = card.number {
                                                    Text("\(number)")
                                                        .font(Font.custom("DBScreenSans-Bold", size: 48))
                                                        .foregroundColor(Color.platinForeground)
                                                }
                                            }
                                            .padding([.bottom], 32)
                                            .padding([.horizontal], 24)
                                        }
                                    }
                                } else {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 12)
                                            .fill(LinearGradient(gradient: Gradient(colors: [.platinBackgroundEdge, .platinBackgroundCenter, .platinBackgroundEdge]), startPoint: .leading, endPoint: .bottom).shadow(.drop(color: .platinForeground, radius: 4)))
                                            .frame(height: 120)
                                        HStack {
                                            Text(card.title)
                                                .font(Font.custom("DBScreenSans-SemiBold", size: 18))
                                                .foregroundColor(Color.platinForeground)
                                            Spacer(minLength: 48)
                                            if let number = card.number {
                                                Text("\(number)")
                                                    .font(Font.custom("DBScreenSans-Bold", size: 48))
                                                    .foregroundColor(Color.platinForeground)
                                            }
                                        }
                                        .padding([.bottom], 32)
                                        .padding([.horizontal], 24)
                                    }
                                }
                            }
                        }
                    }
                }
                .padding()
            }
            .background(Color(uiColor: .systemGray5))
            .toolbar {
                Button("Fertig") {
                    dimiss.callAsFunction()
                }
                .bold(true)
            }
            .onAppear {
                movePulse = true
            }
            .fullScreenCover(isPresented: $showPremiumLounge) {
                PremiumLounge()
            }
        }
    }
    
    func presentPremiumLounge() {
        showPremiumLounge = true
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card()
    }
}

