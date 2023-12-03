//
//  WelcomeScreen.swift
//  LookLab
//
//  Created by Roy Joacquin Masepequena on 11/25/23.
//

import SwiftUI


struct WelcomeScreen: View {
    var body: some View {
        NavigationStack{
            GeometryReader { geo in
                ZStack{
                    Image("WelcomeScreenBG")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width:geo.size.width, height: geo.size.height
                               ,alignment: .center)
                        .offset(y:-120)
                    
                    Image("LookLab-LOGO-WHITE")
                        .resizable()
                        .scaledToFit()
                        .frame(width:geo.size.width * 0.7, alignment: .center)
                        .offset(y:-75)
                    
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .frame(width: geo.size.width, height: 400)
                        .offset(y:350)
                    
                    VStack {
                        Text("LookLab.")
                            .foregroundColor(.black)
                            .offset(x: -30, y: 135)
                            .font(.system(size: 12))

                        
                        Text("Don't Worry,")
                            .foregroundColor(.black)
                            .offset(y: 240)
                            .font(.system(size: 36, weight: .bold))
                        
                        Text("We Have It!")
                            .foregroundColor(.black)
                            .offset(y: 245)
                            .font(.system(size: 36, weight: .bold))
                        
                        Text("Find what you're looking for all and more all")
                            .foregroundColor(.black)
                            .offset(y: 260)
                            .font(.system(size: 10))
                        
                        Text("from one location")
                            .foregroundColor(.black)
                            .offset(y: 265)
                            .font(.system(size: 10))
            
                        NavigationLink {
                            RecommendationScreen()
                        } label: {
                            Text("Let's Begin!")
                                .padding(.horizontal, 95)
                                .padding(.vertical,15)
                                .foregroundColor(.white)
                                .background(.black)
                                .cornerRadius(25)
                        }
                        .offset(y: 275)

                    }
                }
            }
        }
    }
}

//#Preview {
//    WelcomeScreen()
//}
