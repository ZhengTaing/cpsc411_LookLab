//
//  HomeScreen.swift
//  LookLab.
//
//  Created by Zheng Taing on 11/22/23.
//

import SwiftUI

struct HomeScreen: View {
private let categories = ["Tops","Dresses", "Jackets", "Pants", "Skirts", "Acessories", "Shoes"]
     
    var body: some View {
        NavigationStack {
            ZStack {
                Color("bg")
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack (alignment: .leading){
                        AppBarView()
                        CategoriesIconView()
                        
                        
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
                        
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack {
                                NavigationLink{
                                    ProductTryOnView()
                                } label: {
                                    ForEach(0 ..< 6) { index in
                                        ProductCardView(image: Image("trendy_\(index + 1)"),
                                                        logo: Image("tlg_\(index + 1)"), size: 170)
                                        // ProductCardView(logo: Image("logo\(index + 1)"), size: 150)
                                        
                                        
                                    }
                                    .padding(.trailing)
                                }
                                
                            }
                            .padding(.leading)
                        }
                        
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
                        
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(0 ..< 6) { index in
                                    ProductCardView(image: Image("ed_\(index + 1)"),
                                                    logo: Image("tlg_\(index + 1)"), size: 170)
                                    // ProductCardView(logo: Image("logo\(index + 1)"), size: 150)
                                    
                                    
                                }
                                .padding(.trailing)
                            }
                            .padding(.leading)
                        }
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
                        
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(0 ..< 6) { index in
                                    ProductCardView(image: Image("sw_\(index + 1)"),
                                                    logo: Image("tlg_\(index + 1)"), size: 170)
                                    // ProductCardView(logo: Image("logo\(index + 1)"), size: 150)
                                    
                                    
                                }
                                .padding(.trailing)
                            }
                            .padding(.leading)
                        }
                        
                        
                    }
                }
                
                HStack{
//                    BottomNavBarItem(image: Image("home")) {}
                    NavigationLink {
                        HomeScreen()
                    } label: {
                        Image("home")
                            .padding()
                    }
//                    BottomNavBarItem(image: Image("market")) {}
                    NavigationLink {
                        TryOnScreen()
                    } label: {
                        Image("market")
                            .padding()
                    }
                    NavigationLink {
                        tryOnLoadingView()
                    } label: {
                        Image("ar")
                            .padding()
                    }
                    BottomNavBarItem(image: Image("search")) {}
                    BottomNavBarItem(image: Image("profile")) {}
//                    NavigationLink {
//                        ProductTryOnView()
//                    } label: {
//                        Image("profile")
//                            .padding()
//                    }
                    
                }
                .padding()
                .background(Color.white)
                .clipShape(Capsule())
                .padding()
                .shadow(color: Color.black.opacity(0.15), radius: 8, x: 2, y: 6)
                .frame(maxHeight: .infinity, alignment: .bottom)
            }
            .padding()
        }
    }
}


struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

struct AppBarView: View {
    var body: some View {
        HStack{
            Image(uiImage: UIImage(imageLiteralResourceName: "FORYOU"))
                .resizable()
                .frame(width: 42,height: 42,alignment: .center)
            
            Text("For You")
                .font(.custom("Avenir-Black", size: 30))
            
            Spacer()
            
            Image(uiImage: UIImage(imageLiteralResourceName: "LookLab-LOGO-BLACK"))
                .resizable()
                .frame(width: 30,height: 30,alignment: .center)
            
            
            NavigationLink {
                ShoppingCartScreen()
            } label: {
                Image(uiImage: UIImage(imageLiteralResourceName: "shopping-cart"))
                    .resizable()
                
                    .frame(width: 20,height: 20)
            }
                
            
        }
        .padding(.horizontal)
    }
}

struct CategoriesIconView: View {
    var body: some View {
        
            HStack{
                Button(action:{}){
                    Image(uiImage: UIImage(imageLiteralResourceName: "cat_tops"))
                        .resizable()
                        .frame(width: 25,height: 25)
                        .frame(width: 50,height: 50,alignment: .center)
                        .overlay(Circle().stroke(Color.black, lineWidth: 1))
                    
                    
                }
                
                Button(action:{}){
                    Image(uiImage: UIImage(imageLiteralResourceName: "cat_dresses"))
                        .resizable()
                        .frame(width: 27,height: 27)
                        .frame(width: 50,height: 50,alignment: .center)
                        .overlay(Circle().stroke(Color.black, lineWidth: 1))
                    
                }
                Button(action:{}){
                    Image(uiImage: UIImage(imageLiteralResourceName: "cat_jacket"))
                        .resizable()
                        .frame(width: 25,height: 25)
                        .frame(width: 50,height: 50,alignment: .center)
                        .overlay(Circle().stroke(Color.black, lineWidth: 1))
                }
                
                Button(action:{}){
                    Image(uiImage: UIImage(imageLiteralResourceName: "cat_pants"))
                        .resizable()
                        .frame(width: 27,height: 27)
                        .frame(width: 50,height: 50,alignment: .center)
                        .overlay(Circle().stroke(Color.black, lineWidth: 1))
                }
                Button(action:{}){
                    Image(uiImage: UIImage(imageLiteralResourceName: "cat_skirts"))
                        .resizable()
                        .frame(width: 25,height: 25)
                        .frame(width: 50,height: 50,alignment: .center)
                        .overlay(Circle().stroke(Color.black, lineWidth: 1))
                }
                Button(action:{}){
                    Image(uiImage: UIImage(imageLiteralResourceName: "cat_acessories"))
                        .resizable()
                        .frame(width: 25,height: 25)
                        .frame(width: 50,height: 50,alignment: .center)
                        .overlay(Circle().stroke(Color.black, lineWidth: 1))
                }
                Button(action:{}){
                    Image(uiImage: UIImage(imageLiteralResourceName: "cat_shoes"))
                        .resizable()
                        .frame(width: 25,height: 25)
                        .frame(width: 50,height: 50,alignment: .center)
                        .overlay(Circle().stroke(Color.black, lineWidth: 1))
                }
                
            }
        VStack{
            Text("    Tops            Dresses          Jacket           Pants            Skirts         Acessories      Shoes")
                .font(.custom("Avenir-Roman", size: 10))
            
            
        }
    }
    
}

struct ProductCardView: View {
    let image: Image
    let logo: Image
    
    let size: CGFloat
    var body: some View {
        VStack{
            image
                .resizable()
                .frame(width: size, height: 190 * (size/130))
                .overlay(Rectangle().opacity(0))
                .cornerRadius(35)
            
            logo
                .resizable()
                .frame(width: 90, height: 15, alignment: .center)
                .padding(.vertical, -30)
            
            
      /*      Text("Buckle-detail Jacket Dress")
                .font(.custom("Avenir-Black", size: 8))
                .foregroundColor(.white)
                .padding(.vertical, -120)*/
            
            //     .frame(width: 25, height: 15, alignment: .trailing)
            
            
            
        }
    }
}

struct BottomNavBarItem: View {
    let image: Image
    let action: ()-> Void
    var body: some View {
        Button(action:{}, label: {
            image
                .frame(maxWidth: .infinity)
        })
    }
}

