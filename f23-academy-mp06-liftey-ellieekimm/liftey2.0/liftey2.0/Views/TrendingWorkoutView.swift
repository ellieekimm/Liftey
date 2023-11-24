//
//  TrendingWorkoutView.swift
//  liftey2.0
//
//  Created by Ellie Kim on 11/6/23.
//

import SwiftUI

struct TrendingWorkoutView: View {
    let trendingWorkout: TrendingWorkout 
    var body: some View {
        HStack {
            Spacer()
            Spacer()
            Rectangle()
                .stroke(Color("GrayColor"))// Border color and width
                .background(Color("GrayColor")) // Fill color and opacity
                .cornerRadius(15)
                .overlay(
            HStack(spacing: 20) {
                Image(systemName: trendingWorkout.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
                    .foregroundColor(Color("NeonGreen"))
                VStack(alignment: .leading) {
                    Text("\(trendingWorkout.name)")
                        .foregroundColor(Color.white)
                        .font(.headline)
                    Text("\(trendingWorkout.calories)CAL")
                        .foregroundColor(Color("NeonGreen"))
                        .font(.title2)
                }
                Spacer()
            }
            .padding(20)
            .frame(width: 300, height: 70)
            )
            Spacer()
            Spacer()
        }

    }
}

