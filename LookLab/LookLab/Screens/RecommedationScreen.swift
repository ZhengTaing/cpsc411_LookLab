//
//  RecommedationScreen.swift
//  LookLab
//
//  Created by Roy Joacquin Masepequena on 11/26/23.
//

import SwiftUI

struct RecommedationScreen: View {
    var body: some View {
        GeometryReader {geo in
            ZStack {
                Image("LookLab-LOGO-BLACK")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200, alignment: .bottom)
                    
            }
        }
    }
}

#Preview {
    RecommedationScreen()
}
