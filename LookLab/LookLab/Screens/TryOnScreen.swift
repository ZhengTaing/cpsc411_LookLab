//
//  TryOnScreen.swift
//  LookLab
//
//  Created by Derek Le on 12/1/23.
//

import Foundation
import SwiftUI


struct TryOnScreen: View {
private let categories = ["Tops","Dresses", "Jackets", "Pants", "Skirts", "Acessories", "Shoes"]
    var body: some View {
        NavigationStack {
            ZStack {
                
                Color("bg")
                    .edgesIgnoringSafeArea(.all)
                
                
                    VStack (alignment: .center){
                        HStack(alignment: .center){
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
                        
                        .padding()


                        Spacer()
                        
                        CategoriesIconView()
                        
                        HStack{
                            Text("Trendy")
                                .font(.custom("Avenir-Black", size: 10))
                                .foregroundColor(.white)
                                .frame(width: 150,height: 30,alignment: .center)
                                .background(.black)
                                .cornerRadius(50)
                                .frame(width: 100,height: 50,alignment: .center)
                            //       .overlay(Capsule().stroke(Color.black))
                            
                            //     .padding(.vertical,10)
                                .padding(.horizontal,0)
                            
                            Text("Everyday")
                                .font(.custom("Avenir-Black", size: 10))
                                .foregroundColor(.white)
                                .frame(width: 150,height: 30,alignment: .center)
                                .background(.black)
                                .cornerRadius(50)
                                .frame(width: 100,height: 50,alignment: .center)
                            //       .overlay(Capsule().stroke(Color.black))
                            
                            //     .padding(.vertical,10)
                                .padding(.horizontal,0)
                            
                            Text("Sportswear")
                                .font(.custom("Avenir-Black", size: 10))
                                .foregroundColor(.white)
                                .frame(width: 150,height: 30,alignment: .center)
                                .background(.black)
                                .cornerRadius(50)
                                .frame(width: 100,height: 50,alignment: .center)
                            //       .overlay(Capsule().stroke(Color.black))
                            
                            //     .padding(.vertical,10)
                                .padding(.horizontal,0)
                        }
                        
//                        NavigationLink{
//                            ProductTryOnView()
//                        } label: {
//                            ForEach(0 ..< 6) { index in
//                                ProductCardView(image: Image("trendy_\(index + 1)"),
//                                                logo: Image("tlg_\(index + 1)"), size: 170)
//                                // ProductCardView(logo: Image("logo\(index + 1)"), size: 150)
                        
                        
                        ScrollView (.vertical, showsIndicators: false) {
                            HStack {
                                NavigationLink{
                                    TryOnAIGenProcess()
                                } label: {
                                    ForEach(0 ..< 6) { index in
                                        ProductCardView(image: Image("trendy_\(index + 1)"),
                                                        logo: Image("tlg_\(index + 1)"), size: 170)
                                        // ProductCardView(logo: Image("logo\(index + 1)"), size: 150)
                                        ProductCardView(image: Image("tryon_1"),
                                                        logo: Image("tlg_\(index + 1)"), size: 170)
                                        
                                    }
                                    .padding(.trailing)
                                }
                                
                            }
                            .padding(.leading)
                        
                        
                        
                            HStack {
                                NavigationLink{
                                    TryOnAIGen()
                                } label: {
                                    ForEach(0 ..< 6) { index in
                                        ProductCardView(image: Image("ed_\(index + 1)"),
                                                        logo: Image("tlg_\(index + 1)"), size: 170)
                                        // ProductCardView(logo: Image("logo\(index + 1)"), size: 150)
                                        
                                        
                                    }
                                    .padding(.trailing)
                                }
                                
                            }
                            .padding(.leading)
                        
                        
                        
                            HStack {
                                NavigationLink{
                                    TryOnAIGen()
                                } label: {
                                    ForEach(0 ..< 6) { index in
                                        ProductCardView(image: Image("sw_\(index + 1)"),
                                                        logo: Image("tlg_\(index + 1)"), size: 170)
                                        // ProductCardView(logo: Image("logo\(index + 1)"), size: 150)
                                        
                                        
                                    }
                                    .padding(.trailing)
                                }
                                
                            }
                            .padding(.leading)
                        }
                        
                        
                        
                    }
                }
                
            }
            .padding()
        }
    }


