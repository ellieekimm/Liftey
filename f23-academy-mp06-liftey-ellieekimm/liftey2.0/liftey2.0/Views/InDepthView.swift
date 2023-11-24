//
//  InDepthView.swift
//  liftey2.0
//
//  Created by Ellie Kim on 11/7/23.
//

import SwiftUI

struct InDepthView: View {
    @Binding var detailedView: Bool
    var body: some View {
        ZStack {
            Color("GrayColor")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Button(action: {
                    detailedView = false
                }, label: {
                    Text("Return")
                })
                .padding(.trailing, 300)
                .padding(.bottom, 30)
                VStack(alignment: .center, spacing: 10) {
                    Text("Push Day")
                        .font(.title)
                        .foregroundColor(Color("NeonGreen"))
                        .fontWeight(.bold)
                    Text("Tuesday, 7 November 2023")
                        .foregroundColor(Color.white)
                        .font(.title2)
                    HStack(spacing: 50) {
                        VStack{
                            Text("Duration")
                                .foregroundColor(Color("NeonPink"))
                                .font(.title3)
                                .fontWeight(.bold)
                            Text("58:02")
                                .foregroundColor(Color.white)
                            
                        }
                        VStack{
                            Text("Sets")
                                .foregroundColor(Color("NeonPink"))
                                .font(.title3)
                                .fontWeight(.bold)
                            
                            Text("5")
                                .foregroundColor(Color.white)
                            
                        }
                        VStack{
                            Text("Volume")
                                .foregroundColor(Color("NeonPink"))
                                .font(.title3)
                                .fontWeight(.bold)
                            Text("81 lbs")
                                .foregroundColor(Color.white)
                            
                        }
                    }
                }
                VStack(alignment: .leading){
                    Text("Bench Press")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    HStack(alignment: .center, spacing: 40){
                        Text("1")
                            .foregroundColor(Color("LightGray"))
                        Text("95lbs")
                            .foregroundColor(Color.white)
                        Text("4 sets")
                            .foregroundColor(Color.white)
                        Spacer()
                        
                    }
                }
                .padding(.leading, 50)
                .padding(.top, 15)
                VStack(alignment: .leading){
                    Text("Cable Tricep Extension")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    HStack(alignment: .center, spacing: 40){
                        Text("1")
                            .foregroundColor(Color("LightGray"))
                        Text("20lbs")
                            .foregroundColor(Color.white)
                        Text("4 sets")
                            .foregroundColor(Color.white)
                        Spacer()
                        
                    }
                }
                .padding(.leading, 50)
                .padding(.top, 15)
                VStack(alignment: .leading){
                    Text("Dumbbell Chest Press")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    HStack(alignment: .center, spacing: 40){
                        Text("1")
                            .foregroundColor(Color("LightGray"))
                        Text("30lbs")
                            .foregroundColor(Color.white)
                        Text("4 sets")
                            .foregroundColor(Color.white)
                        Spacer()
                        
                    }
                }
                .padding(.leading, 50)
                .padding(.top, 15)
                VStack(alignment: .leading){
                    Text("Lateral Shoulder Raise")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    HStack(alignment: .center, spacing: 40){
                        Text("1")
                            .foregroundColor(Color("LightGray"))
                        Text("10lbs")
                            .foregroundColor(Color.white)
                        Text("3 sets")
                            .foregroundColor(Color.white)
                        Spacer()
                        
                    }
                }
                .padding(.leading, 50)
                .padding(.top, 15)
                VStack(alignment: .leading){
                    Text("Tricep Push Down")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    HStack(alignment: .center, spacing: 40){
                        Text("1")
                            .foregroundColor(Color("LightGray"))
                        Text("20lbs")
                            .foregroundColor(Color.white)
                        Text("3 sets")
                            .foregroundColor(Color.white)
                        Spacer()
                        
                    }
                }
                .padding(.leading, 50)
                .padding(.top, 15)
            }
        }
    }
}


