//
//  ProductDetail.swift
//  LookLab
//
//  Created by Derek Le on 12/1/23.
//

import Foundation
import SwiftUI


struct TryOnAIGen: View {
    var body: some View {
        NavigationStack{
            ZStack{
                
                Color("bg")
                    .edgesIgnoringSafeArea(.all)
                
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
                    .colorInvert()
                    
                    ScrollView{
                        HStack {
                                Image("jeremy_ai")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(35)
                                .overlay(Rectangle()
                                    .stroke(lineWidth: 5)
                                    .foregroundColor(.white)
                                    .cornerRadius(35))
                                
                            
                            
                            
                                // ProductCardView(logo: Image("logo\(index + 1)"), size: 150)
                            
                        }
                        
                        VStack(alignment: .leading){
                            
                            Text("ZARA")
                                .font(.title)
                                .colorInvert()
                            
                            Text("Cropped Poplin Shirt")
                                .font(.title)
                                .colorInvert()
                                
                            
                            Text("Add To Cart")
                                .fixedSize(horizontal: false, vertical: true)
                                .multilineTextAlignment(.center)
                                .padding()
                                .frame(width: 300, height: 50)
                                .background(Rectangle()
                                    .fill(Color.black)
                                    .cornerRadius(35)
                                    .colorInvert())
                               
                            Spacer(minLength:30)
                            
                            Text("The Drop is your inside source for must-have style inspiration from global influencers. Shop limited-edition collections and discover chic wardrobe essentials from Staples by the Drop. Look out for trend inspiration, exclusive brand collaborations, and expert styling tips from those in the know.")
                                .lineSpacing(4.0)
                                .opacity(0.6)
                                .colorInvert()
                            
                            
                        }
                    }
                    
                }
                
            }

        }
        
        .padding(.horizontal)
        .background(Color.black)
    }
    
}
