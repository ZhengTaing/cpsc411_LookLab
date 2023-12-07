//
//  TryOnScreen.swift
//  LookLab
//
//  Created by Derek Le on 11/30/23.
//

import Foundation
import SwiftUI

struct tryOnLoadingView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            TryOnAIGen()
        }else{
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
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 3)){
                        self.size = 0.9
                        self.opacity = 1.0
                        
                    }
                }
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                        self.isActive = true
                    }
                }
        }
        

        }
        
    }
}
