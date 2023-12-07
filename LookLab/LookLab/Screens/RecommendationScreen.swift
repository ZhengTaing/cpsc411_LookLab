//
//  RecommendationScreen.swift
//  LookLab
//
//  Created by Roy Joacquin Masepequena on 11/26/23.
//

import SwiftUI

struct LabelledDivider: View {

    let label: String
    let horizontalPadding: CGFloat
    let color: Color

    init(label: String, horizontalPadding: CGFloat = 20, color: Color = .black) {
        self.label = label
        self.horizontalPadding = horizontalPadding
        self.color = color
    }

    var body: some View {
        HStack {
            line
            Text(label).foregroundColor(color)
                .font(.system(size: 15))
            line
        }
    }

    var line: some View {
        VStack { Divider().background(color) }.padding(horizontalPadding)
    }
}

struct SelectButton: View {
    @Binding var isSelected: Bool
    @State var color: Color
    @State var text: String
    
    var body: some View {
        ZStack {
            Capsule()
                .frame(width: 120, height: 35)
                .foregroundColor(isSelected ? color : .black)
            Text(text)
                .foregroundColor(.white)
        }
    }
}

struct RecommendationScreen: View {
    @State private var isSelected = false
    @State private var isSelected2 = false
    @State private var isSelected3 = false
    @State private var isSelected4 = false
    @State private var isSelected5 = false
    @State private var isSelected6 = false
    @State private var isSelected7 = false
    @State private var isSelected8 = false
    
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
                        
                        Text("Let's get to know each other")
                            .foregroundColor(.black)
                            .font(.system(size: 15))
                        
                    }
                    .padding(.vertical, 20)
                    
                    VStack {
                        LabelledDivider(label: "Gender")
                        
                        HStack{
                            SelectButton(isSelected: $isSelected, color: .gray, text: "Female")
                                .onTapGesture{
                                    isSelected.toggle()
                                    if isSelected{
                                        isSelected2 = false
                                    }
                                }
                            
                            SelectButton(isSelected: $isSelected2, color: .gray, text: "Male")
                                .onTapGesture{
                                    isSelected2.toggle()
                                    if isSelected2{
                                        isSelected = false
                                    }
                                }
                        }
                        
                        LabelledDivider(label: "Looking For")
                        
                        HStack{
                            SelectButton(isSelected: $isSelected3, color: .gray, text: "Trendy")
                                .onTapGesture{
                                    isSelected3.toggle()
                                    if isSelected3{
                                        isSelected4 = false
                                        isSelected5 = false
                                    }
                                }
                            
                            SelectButton(isSelected: $isSelected4, color: .gray, text: "Everyday")
                                .onTapGesture{
                                    isSelected4.toggle()
                                    if isSelected4{
                                        isSelected3 = false
                                        isSelected5 = false
                                    }
                                }
                            
                            SelectButton(isSelected: $isSelected5, color: .gray, text: "Sportswear")
                                .onTapGesture{
                                    isSelected5.toggle()
                                    if isSelected5{
                                        isSelected3 = false
                                        isSelected4 = false
                                    }
                                }
                        }
                        .padding(.horizontal, 20)
                        
                        LabelledDivider(label: "Price Range")
                        
                        HStack{
                            SelectButton(isSelected: $isSelected6, color: .gray, text: "$")
                                .onTapGesture{
                                    isSelected6.toggle()
                                    if isSelected6{
                                        isSelected7 = false
                                        isSelected8 = false
                                    }
                                }
                            
                            SelectButton(isSelected: $isSelected7, color: .gray, text: "$$")
                                .onTapGesture{
                                    isSelected7.toggle()
                                    if isSelected7{
                                        isSelected6 = false
                                        isSelected8 = false
                                    }
                                }
                            
                            SelectButton(isSelected: $isSelected8, color: .gray, text: "$$$")
                                .onTapGesture{
                                    isSelected8.toggle()
                                    if isSelected8{
                                        isSelected6 = false
                                        isSelected7 = false
                                    }
                                }
                        }
                        
                        
                    }
                    
                    Spacer()
                    
                    NavigationLink{
                        HomeScreen()   
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
/*
#Preview {
    RecommendationScreen()
}
*/
