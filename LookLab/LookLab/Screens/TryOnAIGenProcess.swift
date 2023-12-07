//
//  TryOnAIGenProcess.swift
//  LookLab
//
//  Created by Zheng Taing on 12/6/23.
//

import SwiftUI


struct TryOnAIGenProcess: View {
    var body: some View {
        
        NavigationStack {
            ZStack {
                VStack {
                    
                    Image("LookLab-LOGO-BLACK")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding(.vertical, 30)
                    
                    
                    VStack {
                        Text("All Eyes On You!")
                            .foregroundColor(.black)
                            .font(.system(size: 36, weight: .semibold))
                            .italic()
                        
                    }
                    HStack{
                        ProductCardView(image: Image("tryon_1"),
                                        logo: Image("tlg_1)"), size: 170)
                        ProductCardView(image: Image("jeremy_1"),
                                        logo: Image("tlg_1)"), size: 170)
                    }
                    
                    NavigationLink{
                        tryOnLoadingView()
                    } label:{
                        Text("Let's Do This!")
                            .padding(.horizontal, 95)
                            .padding(.vertical,15)
                            .foregroundColor(.white)
                            .background(.black)
                            .cornerRadius(25)
                    }
                    .padding(.bottom, 60)
                }
            }
        }
    }
}
