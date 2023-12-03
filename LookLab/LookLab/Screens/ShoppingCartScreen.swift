//
//  ShoppingCartScreen.swift
//  LookLab
//
//  Created by Roy Joacquin Masepequena on 11/30/23.
//

import SwiftUI

struct ShoppingCartScreen: View {
    @State private var showItemAlert = false
    @State private var showCouponAlert = false
    @State private var showAddressAlert = false
    @State var count: Int = 1
    @State private var couponCode: String = ""
    @State private var couponCodeApplied: Bool = false
    
    
    var body: some View {
        NavigationStack{
            ZStack{
                // Item view
                VStack{
                    HStack{
                        
                        Button {
                           print("this is working")
                        } label: {
                            Image("arrow-left")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                                .offset(x: -120)
                        }
                        
                        
                                        
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
                        Image("trendy_1")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 80, height: 80)
                        
                        VStack(alignment: .leading){
                            Text("H&M")
                                .font(.system(size: 15).weight(.bold) )
                            
                            Text("Buckle-detail Jacket Dress")
                                .font(.system(size: 10))
                            
                            Text("Size: M")
                                .font(.system(size: 10))
                            
                            Spacer()
                            
                            Text("$69.99")
                                .font(.system(size: 12).weight(.bold))
                                .frame(alignment: .leading)
                            
                        }
                        .padding(.vertical, 10)
                        
                        Spacer()
                        
                        VStack(alignment: .trailing) {
                            Button {
                                showItemAlert = true
                            } label:{
                                Image("trash-2")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                    .padding(10)
                            }
                            .alert(isPresented: $showItemAlert) {
                               Alert(
                                title: Text("Remove item from your cart?"),
                                primaryButton: .destructive(Text("Remove")){},
                                secondaryButton: .cancel()
                                
                               )
                            }
                            
                            Spacer()
                            
                            HStack{
                                Button{
                                    if self.count == 1 {
                                        showItemAlert = true
                                    } else {
                                        self.count -= 1
                                    }
                                } label: {
                                    Image("minus")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 15)
                                }
                                .alert(isPresented: $showItemAlert) {
                                   Alert(
                                    title: Text("Remove item from your cart?"),
                                    primaryButton: .destructive(Text("Remove")){},
                                    secondaryButton: .cancel()
                                    
                                   )
                                }
                                
                                Text("\(count)")
                                    .font(.system(size:18).weight(.bold))
                                
                                Button {
                                    self.count += 1
                                } label: {
                                    Image("plus")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 15)
                                }
                            }
                            .padding(10)
                        }
                            
                    }
                    .frame(width: 350, height: 100)
                    .background(Color(red:0.97, green: 0.95, blue: 0.95))
                    .cornerRadius(20)
                    .padding(.vertical, 10)
                    
                    //End of Item view
                    
                    //Coupon view
                    HStack{
                        TextField(
                            "Coupon Code",
                            text: $couponCode
                        )
                        .padding(10)
                        
                        Button{
                            if couponCode.isEmpty{
                                showCouponAlert = true
                            } else {
                                self.couponCodeApplied = true
                            }
                            
                        } label: {
                            Text("Apply")
                                .font(.system(size: 15) .weight(.bold))
                                .foregroundColor(.black)
                        }
                        .alert("Looks like you didn't put a coupon code in.", isPresented: $showCouponAlert){
                            Button("Ok"){}
                        }
                        .padding(10)
                        
                    }
                    .frame(width: 350, height: 35)
                    .background(Color(red:0.97, green: 0.95, blue: 0.95))
                    .cornerRadius(20)
                    .padding(.vertical, 10)
                    //End of Coupon view
                    
                    //Address view
                    VStack(alignment: .leading){
                        Text("Shipping Address")
                            .font(.system(size: 18).weight(.bold) )
                            .padding(10)
                        
                        Text("Zheng Taing")
                            .font(.system(size: 10))
                            .padding( .horizontal, 10)
                        
                        Text("123 Someplace Dr, 92660")
                            .font(.system(size: 10))
                            .padding(.vertical, 0.5)
                            .padding( .horizontal, 10)
                        
                        Text("Newport Beach, California")
                            .font(.system(size: 10))
                            .padding(.vertical, 0.5)
                            .padding( .horizontal, 10)
                        
                        Divider()
                            .frame(height: 3)
                            .overlay(.gray)
                            .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal, 10)
                        
                        Spacer()
                        
                        Button{
                            showAddressAlert = true
                        } label:{
                            Text("Change")
                                .foregroundColor(.black)
                                .font(.system(size: 15).weight(.bold))
                                .frame(alignment: .leading)
                                .offset(x: 12, y: -12)
                                .underline()
                            
                        }
                        .alert(isPresented: $showAddressAlert) {
                           Alert(
                            title: Text("Change shipping address?"),
                            primaryButton: .destructive(Text("Change")){},
                            secondaryButton: .cancel()
                            
                           )
                        }
                        
                    }
                    .frame(width: 350, height: 150, alignment: .topLeading)
                    .background(Color(red:0.97, green: 0.95, blue: 0.95))
                    .cornerRadius(20)
                    .padding(.vertical, 10)
                    //End of Address view
                    
                    //Order Summary view
                    VStack{
                        Text("Order Summary")
                            .font(.system(size: 18).weight(.bold))
                            .offset(x: -100, y: -12)
                        
                        HStack{
                            Text("Subtotal")
                                .font(.system(size: 12).weight(.bold))
                            
                            Text("(\(count) item)")
                                .font(.system(size:12))
                            
                            Spacer()
                            
                            Text("$69.99")
                                .font(.system(size:12))
                            
                        }
                        .padding(.horizontal, 10)
                        
                        HStack{
                            Text("Delivery")
                                .font(.system(size: 12).weight(.bold))
                            
                            Spacer()
                            
                            Text("$7.99")
                                .font(.system(size: 12))
                        }
                        .padding(.vertical, 1)
                        .padding(.horizontal,10)
                        
                        HStack{
                            Text("Discount")
                                .font(.system(size: 12).weight(.bold))
                            
                            if couponCodeApplied == true {
                                Text("(\(couponCode))")
                                    .font(.system(size: 12))
                            }
                            
                            Spacer()
                            
                            if couponCodeApplied == true {
                                Text("-$5.19")
                                    .font(.system(size: 12))
                            }
                        }
                        .padding(.horizontal, 10)
                        
                        Divider()
                            .frame(height: 3)
                            .overlay(.gray)
                            .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal, 10)
                        
                        HStack{
                            Text("Grand Total")
                                .font(.system(size: 12).weight(.bold))
                            
                            Text("(\(count) item)")
                                .font(.system(size:12))
                            
                            Spacer()
                            
                            if couponCodeApplied == true {
                                Text("$72.79")
                                    .font(.system(size: 12))
                            } else {
                                Text("$77.78")
                                    .font(.system(size: 12))
                            }
                        }
                        .padding(10)
                        
                    }
                    .frame(width: 350, height: 180, alignment: .leading)
                    .background(Color(red:0.97, green: 0.95, blue: 0.95))
                    .cornerRadius(20)
                    .padding(.vertical, 15)
                    
                    //End of Order Summary view
                    
                    Spacer()
                    
                    Button {
                        
                    }label: {
                        Text("Proceess to Checkout")
                            .font(.system(size: 18).weight(.bold))
                            .padding(.horizontal, 85)
                            .padding(.vertical,15)
                            .foregroundColor(.white)
                            .background(.black)
                            .cornerRadius(20)
                    }
                }
            }
        }
    }
}

#Preview {
    ShoppingCartScreen()
}
