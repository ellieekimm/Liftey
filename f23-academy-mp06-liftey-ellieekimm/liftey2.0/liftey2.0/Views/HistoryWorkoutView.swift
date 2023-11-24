//
//  HistoryWorkoutView.swift
//  liftey2.0
//
//  Created by Ellie Kim on 11/6/23.
//

import SwiftUI

struct HistoryWorkoutView: View {
    let historyWorkout: WorkoutHistory
    
    var body: some View {
        HStack {
            Spacer()
            Spacer()
            HStack {
                VStack(alignment: .center) {
                    Text("\(historyWorkout.dayString)")
                        .foregroundColor(Color.white)
                        .font(.headline)
                    Text("\(historyWorkout.dayNumber)")
                        .foregroundColor(Color.white)
                        .font(.title3)
                        .fontWeight(.semibold)
                    Text("\(historyWorkout.month)")
                        .foregroundColor(Color.white)
                        .font(.headline)
                }
                .frame(width: 120)
                VStack(alignment: .leading) {
                    Text("\(historyWorkout.nameOfWorkout)")
                        .foregroundColor(Color.white)
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack{
                        Text("\(historyWorkout.length)")
                            .foregroundColor(Color("NeonGreen"))
                        Image(systemName: "circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 7)
                            .foregroundColor(Color.white)
                        Text("\(historyWorkout.exerciseLength) exercises")
                            .foregroundColor(Color("NeonPink"))
                    }
                }
                .frame(width: 167)
                Spacer()
                Spacer()
            }
            .padding(20)
            .background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color("Gray")))
            Spacer()
            Spacer()
        }

    }
}

#Preview {
    HistoryWorkoutView(historyWorkout: WorkoutHistory.example)
}



