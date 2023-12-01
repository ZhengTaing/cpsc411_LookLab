//
//  ShoppingCartScreen.swift
//  LookLab
//
//  Created by Roy Joacquin Masepequena on 11/30/23.
//

import SwiftUI

struct ShoppingCartScreen: View {
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    HStack{
                        Image("arrow-left")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                            .offset(x: -120)
                        
                        
                        Image("LookLab-LOGO-BLACK")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                            .padding(.vertical, 3)
                            .offset(x: -18)
                        
                        Text("Cart")
                            .offset(x: -25)
                            .foregroundColor(.black)
                            .font(.system(size: 33, weight: .semibold))
                        
                    }
                    
                    HStack{
                        
                    }
                    
                    
                    Spacer()
                }
                
            }
        }
    }
}

#Preview {
    ShoppingCartScreen()
}
