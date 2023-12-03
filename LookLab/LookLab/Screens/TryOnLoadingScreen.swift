//
//  TryOnScreen.swift
//  LookLab
//
//  Created by Derek Le on 11/30/23.
//

import Foundation
import SwiftUI

struct tryOnLoadingView: View {
    var body: some View {
        
        NavigationStack{
            ZStack{
                VStack{
                    HStack{
                        Image("arrow-left")
                            .resizable()
                            .scaledToFit()
                            .colorInvert()
                            .frame(width: 25, height: 25)
                            .offset(x: -120)
                        
                        
                        Image("LookLab-LOGO-BLACK")
                            .resizable()
                            .scaledToFit()
//                            .colorInvert()
                            .frame(width: 30, height: 30)
                            .padding(.vertical, 3)
                            .offset(x: -18)
                        
                        Image("ar")
                            .offset(x: -25)
                            //.foregroundColor(.black)
//                            .colorInvert()
                            .font(.system(size: 33, weight: .semibold))
                        
                    }
                    
//                    HStack{
//
//                    }
//
//
//                    Spacer()
                    
                    HStack{
                        Text("nothing found")
                    }
                    .padding()
                    .foregroundColor(Color.black)
                    .clipShape(Capsule())
                    .padding()
                    .shadow(color: Color.black.opacity(0.15), radius: 8, x: 2, y: 6)
                    .frame(maxHeight: .infinity, alignment: .center)
                }
                
            }

        }
        .padding(.horizontal)
        
    }
}
