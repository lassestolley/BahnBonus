//
//  PremiumLounge.swift
//  BahnBonus
//
//  Created by Lasse Stolley on 17.09.22.
//

import SwiftUI

struct PremiumLounge: View {
    
    @Environment(\.dismiss) var dimiss
    
    @State var movePulse: Bool = Bool()
    @State var showDetails: Bool = Bool()
    @State var showConditions: Bool = Bool()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 32) {
                    VStack(spacing: 0) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 12)
                                .fill(LinearGradient(gradient: Gradient(colors: [.platinBackgroundEdge, .platinBackgroundCenter, .platinBackgroundEdge]), startPoint: .leading, endPoint: .bottom))
                                .shadow(radius: 8)
                                .frame(height: 140)
                            VStack {
                                HStack {
                                    Text("Eintritt DB Lounge Premium Bereich")
                                        .font(Font.custom("DBScreenSans-SemiBold", size: 20))
                                        .foregroundColor(Color.platinForeground)
                                    Spacer()
                                }
                                .padding([.horizontal], 24)
                                Capsule()
                                    .frame(width: 40, height: 4, alignment: .leading)
                                    .foregroundColor(Color.accentColor)
                                    .offset(x: movePulse ? 124 : -124)
                                    .animation(.easeInOut(duration: 1.4).repeatForever(autoreverses: true), value: movePulse)
                            }
                        }
                        ZStack {
                            RoundedRectangle(cornerRadius: 12)
                                .fill(.white)
                                .frame(height: 330)
                            VStack {
                                HStack {
                                    Image("Corner")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .rotationEffect(.degrees(90))
                                    Spacer()
                                    Image("Corner")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .rotationEffect(.degrees(180))
                                }
                                .frame(height: 24)
                                Image("Azteccode")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 215)
                                HStack {
                                    Image("Corner")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .rotationEffect(.degrees(0))
                                    Spacer()
                                    VStack {
                                        Spacer()
                                        Text("#1")
                                            .font(Font.custom("DBScreenSans-Regular", size: 12))
                                    }
                                    Spacer()
                                    Image("Corner")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .rotationEffect(.degrees(-90))
                                }
                                .frame(height: 24)
                            }
                            .padding(24)
                        }
                    }
                    .padding()
                    VStack {
                        Button(action: presentDetails) {
                            HStack {
                                Text("Details")
                                    .font(Font.custom("DBScreenSans-Regular", size: 16))
                                    .foregroundColor(.black)
                                Spacer()
                                Image(systemName: "chevron.forward")
                                    .foregroundColor(Color(uiColor: .systemGray))
                            }
                            .padding([.horizontal])
                            .padding([.vertical], 8)
                        }
                        Divider()
                        Button(action: presentConditions) {
                            HStack {
                                Text("Konditionen")
                                    .font(Font.custom("DBScreenSans-Regular", size: 16))
                                    .foregroundColor(.black)
                                Spacer()
                                Image(systemName: "chevron.forward")
                                    .foregroundColor(Color(uiColor: .systemGray))
                            }
                            .padding([.horizontal])
                            .padding([.vertical], 8)
                        }
                        Divider()
                    }
                }
            }
            .background(Color(uiColor: .systemGray5))
            .background(NavigationLink(destination: PremiumLoungeDetails(), isActive: $showDetails) {
                EmptyView()
            })
            .background(NavigationLink(destination: PremiumLoungeConditions(), isActive: $showConditions) {
                EmptyView()
            })
            .toolbar {
                Button("Fertig") {
                    dimiss.callAsFunction()
                }
                .bold(true)
            }
            .onAppear {
                movePulse = true
            }
        }
    }
    
    func presentDetails() {
        showDetails = true
    }
    
    func presentConditions() {
        showConditions = true
    }
}

struct PremiumLounge_Previews: PreviewProvider {
    static var previews: some View {
        PremiumLounge()
    }
}
